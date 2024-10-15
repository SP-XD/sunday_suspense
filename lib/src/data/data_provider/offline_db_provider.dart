import 'package:isar/isar.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/models/app_data_model.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:path_provider/path_provider.dart';

class OfflineDbProvider {
  late Isar db;
  AppData? appData;
  int _defaultAppDataId = 0;

  OfflineDbProvider({required List<CollectionSchema<dynamic>> schemas}) {
    openDb(schemas: schemas);
  }

  Future<void> openDb({required List<CollectionSchema<dynamic>> schemas}) async {
    final dir = await getApplicationDocumentsDirectory();
    db = await Isar.open(schemas, directory: dir.path);
    appData = await db.appDatas.get(_defaultAppDataId);

    if (appData == null) {
      await db.writeTxn(() async {
        await db.appDatas.put(AppData(id: _defaultAppDataId, categoryVersion: ''));
      });

      appData = await db.appDatas.get(_defaultAppDataId);
    }
  }

  Future<void> initAppData({
    required AppData data,
  }) async {
    await db.writeTxn(() async {
      await db.appDatas.put(
        AppData(
          id: _defaultAppDataId,
          categoryVersion: data.categoryVersion,
        )..builtInCategories = data.builtInCategories,
      );
    });

    appData = await db.appDatas.get(_defaultAppDataId);
  }

  /// Insert or Update a category, inserts if the id of the category doesn't exist else updates
  Future<void> upsertCategory(
    List<CategoryModel> categoryList,
  ) async {
    if (appData == null) {
      throw Exception('AppData not initialized');
    }
    final List<CategoryModel> builtInCategoriesList = [];
    final List<CategoryModel> userCategoriesList = [];

    await db.writeTxn(() async {
      final categories = await db.collection<CategoryModel>();
      await categories.putAllByCategory_id(categoryList);

      final currentUpdatedCategories =
          await categories.getAllByCategory_id(categoryList.map((c) => c.category_id).toList());

      currentUpdatedCategories.forEach((c) {
        if (c!.sourceType == CategorySourceType.builtInCategory)
          builtInCategoriesList.add(c);
        else
          userCategoriesList.add(c);
      });

      logger.d('builtInCategoriesList: $builtInCategoriesList, userCategoriesList: $userCategoriesList');

      if (builtInCategoriesList.isNotEmpty) {
        appData?.builtInCategories.addAll(builtInCategoriesList);
        appData?.builtInCategories.save();
      }
      if (userCategoriesList.isNotEmpty) {
        appData?.userCategories.addAll(userCategoriesList);
        appData?.userCategories.save();
      }
    });
  }

  /// use the [getHistoryList] method for history list
  Future<List<CategoryModel>> getCategories() async {
    return await db.txn(() async {
      List<CategoryModel> result = [];
      appData?.builtInCategories.load();
      appData?.userCategories.load();
      var builtInCategoriesRes =
          await appData?.builtInCategories.filter().not().typeEqualTo(CategoryType.history).findAll();
      result.addAll((builtInCategoriesRes ?? []) + (appData?.userCategories.toList() ?? []));

      return result;
    });
  }

  /// Insert or Update history list, inserts if the history list doesn't exist else updates
  Future<void> upsertHistoryList(CategoryModel historyModel) async {
    if (appData == null) {
      throw Exception('AppData not initialized');
    }

    if (historyModel.type != CategoryType.history) {
      throw ArgumentError('historyModel must be of type CategoryType.history');
    }

    await db.writeTxn(() async {
      final categories = await db.collection<CategoryModel>();
      await categories.putByCategory_id(historyModel);
      appData!.builtInCategories.add(historyModel);
      appData!.builtInCategories.save();
    });
  }

  Future<CategoryModel?> getHistoryList() async {
    return await db.txn(() async {
      final categories = await db.collection<CategoryModel>();
      final result = await categories.filter().typeEqualTo(CategoryType.history).findFirst();

      return result;
    });
  }

  Future<void> setOnboardingStatus(bool isOnboardingDone) async {
    await db.writeTxn(() async {
      final appData = await db.appDatas.get(_defaultAppDataId);
      appData!.isOnboardingDone = isOnboardingDone;
      await db.appDatas.put(appData);
    });
  }

  bool? getOnboardingStatus() {
    return db.txnSync(() {
      final appData = db.appDatas.getSync(_defaultAppDataId);
      return appData?.isOnboardingDone;
    });
  }

  Stream<bool?> watchOnboardingStatus() {
    return db.appDatas
        .watchObject(_defaultAppDataId, fireImmediately: true)
        .asyncMap((appData) => appData?.isOnboardingDone)
        .distinct();
  }

  Future<void> updateSelectedLanguages(List<LanguageType> languages) async {
    await db.writeTxn(() async {
      final appData = await db.appDatas.get(_defaultAppDataId);
      appData!.selectedLanguages = languages;
      await db.appDatas.put(appData);
    });
  }

  Future<void> deleteAppData() async {
    await db.writeTxn(() async {
      await db.appDatas.deleteAll([_defaultAppDataId]);
    });
  }

  Future<void> closeDb() async {
    await db.close();
  }
}
