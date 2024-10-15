import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/features/videos/videos.dart';
import 'package:midnight_suspense/src/services/bloc_manager_service.dart';

import '../bloc/category_bloc.dart';

class CategoryTabWidget extends StatelessWidget {
  const CategoryTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return state.map(
          initial: (_) {
            context.read<CategoryBloc>().add(CategoryEvent.loadCategories());
            return const SizedBox(height: 0, width: 0);
          },
          loading: (_) => loadingWidget(),
          loaded: (loadedState) {
            return DefaultTabController(
              length: loadedState.categories.length,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TabBar(
                    labelColor: Colors.red.shade700,
                    indicator: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [Colors.red.withOpacity(0.2), Colors.transparent],
                        radius: 1,
                        stops: [0.1, 1],
                        center: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    unselectedLabelColor: Colors.grey.shade700,
                    labelStyle: GoogleFonts.creepster(),
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    tabs: loadedState.categories
                        .map(
                          (c) => Tab(
                            text: c.title,
                          ),
                        )
                        .toList(),
                  ),
                  // TabBarView(children: []),
                  Expanded(
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: loadedState.categories
                          .map(
                            (c) => BlocProvider.value(
                              value: getIt<VBlocManagerService>().getBloc(
                                c.category_id,
                                c.type,
                                RepositoryProvider.of<VideosRepository>(context),
                              ),
                              child: VideosWidget(
                                categoryId: c.category_id,
                                categoryType: c.type,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (errorState) => Text(errorState.message.toString()));
    });
  }
}
