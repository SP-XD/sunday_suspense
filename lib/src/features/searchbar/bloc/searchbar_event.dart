part of 'searchbar_bloc.dart';

@freezed
class SearchbarEvent with _$SearchbarEvent {
  const factory SearchbarEvent.search({required String query}) = _Search;
}
