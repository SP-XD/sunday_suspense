import 'dart:convert';
import 'dart:io';

import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/app_data_model.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';

class CategoriesRepository {
  final OfflineDbProvider offlineDbProvider;
  late final CategoryModel historyCategory;

  CategoriesRepository({required this.offlineDbProvider}) {
    // logger.i('CategoriesRepository init called, defaultsUrl $defaultsUrl');
    // fetchAndSaveCategories(fetchUrl: defaultsUrl);
  }

  /// use the [getHistoryList] method for history list
  Future<List<CategoryModel>> getCategories() async {
    // Fetch categories from API
    return await offlineDbProvider.getCategories();
  }

  Future<void> fetchAndSaveCategories({required Uri? fetchUrl}) async {
    if (fetchUrl == null) {
      logger.w('No URL provided for fetching categories, skipping...');
      return;
    }

    // Save categories to API
    HttpClient client = HttpClient();

    final res = await client.getUrl(fetchUrl);
    final response = await res.close();
    logger.i('fetchAndSave called');
    if (response.statusCode == HttpStatus.ok) {
      final jsonString = await response.transform(utf8.decoder).join();
      final jsonData = jsonDecode(jsonString);
      final appData = AppData.fromJson(jsonData as Map<String, dynamic>);
      logger.d(
          'appData: $appData, jsonString: $jsonString, offlineDbProvider.appData: ${offlineDbProvider.appData ?? 'null'}');

      if (offlineDbProvider.appData == null) {
        logger.d('categories fetched and saved. category_version: ${appData.categoryVersion}');
        offlineDbProvider.initAppData(data: appData);
      } else if ((offlineDbProvider.appData!.categoryVersion != null &&
              offlineDbProvider.appData!.categoryVersion != appData.categoryVersion) ||
          offlineDbProvider.appData!.builtInCategories.isEmpty) {
        logger.d('categories fetched and updated to category_version: ${appData.categoryVersion}');
        offlineDbProvider.updateAppData(data: appData);
      }
    }
  }

  Future<CategoryModel?> getHistoryList() async {
    return await offlineDbProvider.getHistoryList();
  }
}
