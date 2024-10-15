import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midnight_suspense/src/features/category/bloc/category_bloc.dart';
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red.shade900.withOpacity(0.1),
              Colors.black,
              // hex code color
              //   Color.fromRGBO(59, 0, 0, 0.898),
            ],
            stops: [0, 1],
          ),
        ),
        child: BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
          return state.mapOrNull(
                initial: (_) {
                  context.read<CategoryBloc>().add(CategoryEvent.loadCategories());
                  return SizedBox.shrink();
                },
                loading: (_) => loadingWidget(),
                loaded: (loadedState) => ListView.builder(
                  itemCount: loadedState.categories.length,
                  itemBuilder: (context, index) => ListTile(
                    tileColor: Colors.transparent,
                    title: Text(
                      loadedState.categories[index].title,
                      style: GoogleFonts.ptSerif(color: Colors.white),
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
