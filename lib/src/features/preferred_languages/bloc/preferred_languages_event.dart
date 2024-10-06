part of 'preferred_languages_bloc.dart';

@freezed
sealed class PreferredLanguagesEvent with _$PreferredLanguagesEvent {
  const factory PreferredLanguagesEvent.selectLanguage(LanguageType language) = _SelectLanguage;
  const factory PreferredLanguagesEvent.unSelectLanguage(LanguageType language) = _UnSelectLanguage;
}
