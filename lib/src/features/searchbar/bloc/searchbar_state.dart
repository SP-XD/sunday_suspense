part of 'searchbar_bloc.dart';

@freezed
class SearchbarState with _$SearchbarState {
  const factory SearchbarState.initial() = _Initial;
  const factory SearchbarState.loading() = _Loading;
  const factory SearchbarState.loaded({required List<Video> searchResults}) = _Loaded;
  const factory SearchbarState.error({required String message}) = _Error;
}
