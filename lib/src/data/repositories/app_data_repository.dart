import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/app_data_model.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';

class AppDataRepository {
  final OfflineDbProvider _offlineDbProvider;

  AppDataRepository({
    required OfflineDbProvider offlineDbProvider,
  }) : _offlineDbProvider = offlineDbProvider;

  Future<AppData?> getAppData() async {
    return await _offlineDbProvider.appData;
  }

  Future<void> saveOnboardingState(bool isOnboardingDone) async {
    await _offlineDbProvider.setOnboardingStatus(isOnboardingDone);
  }

  bool? getOnboardingStatus() {
    return _offlineDbProvider.getOnboardingStatus();
  }

  Stream<bool?> watchOnboardingStatus() {
    return _offlineDbProvider.watchOnboardingStatus();
  }

  Future<void> updateSelectedLanguages(List<LanguageType> languages) async {
    await _offlineDbProvider.updateSelectedLanguages(languages);
  }
}
