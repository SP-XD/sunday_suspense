part of "category_bloc.dart";

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.loadCategories() = _LoadCategories;
  const factory CategoryEvent.loadHistory() = _LoadHistory;
}
