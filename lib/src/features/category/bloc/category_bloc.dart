import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/repositories/categories_repository.dart';

part "category_state.dart";
part "category_event.dart";

part "category_bloc.freezed.dart";

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this.categoriesRepository) : super(CategoryState.initial()) {
    on<CategoryEvent>((event, emit) async {
      await event.map(
        loadCategories: (event) async {
          emit(CategoryState.loading());
          final categories = await categoriesRepository.getCategories();
          emit(CategoryState.loaded(categories));
        },
        loadHistory: (_LoadHistory value) async {
          //   emit(CategoryState.loading());
          //   final historyList = await categoriesRepository.getHistoryList();
          // TODO: fix the history loading state
          //   emit(CategoryState.loaded([historyList]));
        },
      );
    });
  }

  CategoriesRepository categoriesRepository;
}
