part of 'preferred_languages_bloc.dart';

@unfreezed
class PreferredLanguagesState with _$PreferredLanguagesState {
  factory PreferredLanguagesState.initial() => PreferredLanguagesState(
        availableLanguages: LanguageType.values.toList(),
        selectedLanguages: [],
      );

  factory PreferredLanguagesState({
    required List<LanguageType> availableLanguages,
    required List<LanguageType> selectedLanguages,
  }) = _PreferredLanguagesState;
}
