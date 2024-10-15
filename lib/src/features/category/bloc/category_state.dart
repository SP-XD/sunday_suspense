part of "category_bloc.dart";

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  factory CategoryState.loading() = _Loading;
  factory CategoryState.loaded(List<CategoryModel> categories) = _Loaded;
  factory CategoryState.error(String message) = _Error;
}
