import 'dart:convert';
import 'dart:io';

import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/app_data_model.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';

class CategoriesRepository {
  late final OfflineDbProvider offlineDbProvider;
  late final CategoryModel historyCategory;

  CategoriesRepository({required OfflineDbProvider offlineDbProvider, required Uri? defaultsUrl}) {
    offlineDbProvider = offlineDbProvider;

    fetchAndSaveCategories(fetchUrl: defaultsUrl);
  }

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
    if (response.statusCode == HttpStatus.ok) {
      final jsonString = await response.transform(utf8.decoder).join();
      final jsonData = jsonDecode(jsonString);
      final appData = AppData.fromJson(jsonData as Map<String, dynamic>);
      if (offlineDbProvider.appData == null ||
          (offlineDbProvider.appData?.categoryVersion != null &&
              offlineDbProvider.appData!.categoryVersion != appData.categoryVersion)) {
        offlineDbProvider.initAppData(data: appData);
      }
    }
  }

  Future<CategoryModel?> getHistoryList() async {
    return await offlineDbProvider.getHistoryList();
  }
}
