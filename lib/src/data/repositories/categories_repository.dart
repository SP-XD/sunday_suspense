import 'dart:convert';
import 'dart:io';

import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/app_data_model.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';

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

  Future<void> fetchAndSaveCategoryArtWork({required VideosRepository videosRepo}) async {
    final categories = await offlineDbProvider.getCategories();

    for (int i = 0; i < categories.length; i++) {
      String? artWork;

      final category = categories[i];
      //   if (category.artUrl != null) continue;

      if (category.type == CategoryType.channel) {
        artWork = await videosRepo.getChannelLogo(category.category_id);
      } else if (category.type == CategoryType.playlist) {
        var playlistDetails = await videosRepo.getPlaylistDetails(category.category_id);
        artWork = playlistDetails.thumbnails?.mediumResUrl;
      }

      if (artWork != null) {
        logger.i("artWork: " + artWork);
        categories[i] = category.copyWith(artUrl: artWork);
      }
    }

    logger.d("modified Categories after fetching artWork: $categories");
    await offlineDbProvider.upsertCategory(categories);
  }
}
