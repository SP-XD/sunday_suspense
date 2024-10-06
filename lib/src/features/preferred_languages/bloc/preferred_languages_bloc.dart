import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/repositories/app_data_repository.dart';

part 'preferred_languages_event.dart';
part 'preferred_languages_state.dart';
part 'preferred_languages_bloc.freezed.dart';

class PreferredLanguagesBloc extends Bloc<PreferredLanguagesEvent, PreferredLanguagesState> {
  PreferredLanguagesBloc() : super(PreferredLanguagesState.initial()) {
    on<PreferredLanguagesEvent>((event, emit) {
      event.map(unSelectLanguage: (value) async {
        var appData = await appDataRepository.getAppData();
        if (appData == null) return;

        appData.selectedLanguages.remove(value.language);
        appDataRepository.updateSelectedLanguages(appData.selectedLanguages);
        emit(
          PreferredLanguagesState(
            selectedLanguages: appData.selectedLanguages,
            availableLanguages: LanguageType.values.toList(),
          ),
        );
      }, selectLanguage: (event) async {
        var appData = await appDataRepository.getAppData();
        if (appData == null) return;

        if (!appData.selectedLanguages.contains(event.language)) {
          appData.selectedLanguages.add(event.language);
        }

        appDataRepository.updateSelectedLanguages(appData.selectedLanguages);

        emit(
          PreferredLanguagesState(
            selectedLanguages: appData.selectedLanguages,
            availableLanguages: LanguageType.values.toList(),
          ),
        );
      });
    });
  }

  final AppDataRepository appDataRepository = getIt<AppDataRepository>();
}
