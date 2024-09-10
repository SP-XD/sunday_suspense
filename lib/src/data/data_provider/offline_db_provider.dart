import 'package:isar/isar.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:path_provider/path_provider.dart';

class OfflineDbProvider {
  late Isar box;
  OfflineDbProvider({required List<CollectionSchema<dynamic>> schemas}) {
    openDb(schemas: schemas);
  }

  void openDb({required List<CollectionSchema<dynamic>> schemas}) async {
    final dir = await getApplicationDocumentsDirectory();
    box = await Isar.open(schemas, directory: dir.path);
  }

  /// Insert or Update a category, inserts if the id of the category doesn't exist else updates
  Future<void> upsertCategory(CategoryModel category) async {
    final categories = await box.collection<CategoryModel>();

    await categories.put(category);
  }

  /// use the [getHistoryList] method for history list
  Future<List<CategoryModel>> getCategories({bool includeHistoryCategory = false}) async {
    final categories = await box.collection<CategoryModel>();
    final result = await categories
        .filter()
        .typeEqualTo(CategoryType.channel)
        .or()
        .typeEqualTo(CategoryType.playlist)
        .or()
        .optional(includeHistoryCategory, (op) => op.typeEqualTo(CategoryType.history))
        .findAll();

    return result;
  }

  /// Insert or Update history list, inserts if the history list doesn't exist else updates
  Future<void> upsertHistoryList(CategoryModel historyModel) async {
    if (historyModel.type != CategoryType.history) {
      throw ArgumentError('historyModel must be of type CategoryType.history');
    }
    final categories = await box.collection<CategoryModel>();
    await categories.put(historyModel);
  }

  Future<CategoryModel?> getHistoryList() async {
    final categories = await box.collection<CategoryModel>();
    final result = await categories.filter().typeEqualTo(CategoryType.history).findFirst();

    return result;
  }

  Future<void> closeDb() async {
    await box.close();
  }
}
