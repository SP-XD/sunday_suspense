import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:midnight_suspense/src/features/category/bloc/category_bloc.dart';
import 'package:midnight_suspense/src/features/category/view/category_card_widget.dart';
import 'package:midnight_suspense/src/features/category/view/category_details.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';

@RoutePage()
class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [
        //       Colors.red.shade900.withOpacity(0.1),
        //       Colors.black,
        //       // hex code color
        //       //   Color.fromRGBO(59, 0, 0, 0.898),
        //     ],
        //     stops: [0, 1],
        //   ),
        // ),
        child: BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
          return state.mapOrNull(
                initial: (_) {
                  context.read<CategoryBloc>().add(CategoryEvent.loadCategories());
                  return SizedBox.shrink();
                },
                loading: (_) => loadingWidget(),
                loaded: (loadedState) => AlignedGridView.count(
                  itemCount: loadedState.categories.length,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  itemBuilder: (context, index) => Hero(
                    tag: loadedState.categories[index].title,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => CategoryDetails(
                              title: loadedState.categories[index].title,
                              language: loadedState.categories[index].language.name,
                            ),
                          ),
                        );
                      },
                      child: CategoryCardWidget(
                        model: loadedState.categories[index],
                      ),
                    ),
                  ),
                ),
                error: (errorState) => SizedBox.shrink(),
              ) ??
              SizedBox.shrink();
        }),
      ),
    );
  }
}
