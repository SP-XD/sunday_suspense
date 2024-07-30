import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/shared_bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/features/home/bloc/home_bloc.dart';
import 'package:midnight_suspense/src/features/player/player.dart';
import 'package:midnight_suspense/src/features/player/view/item_card_big.dart';
import 'package:midnight_suspense/src/features/searchbar/searchbar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              // hex code color
              Color.fromRGBO(59, 0, 0, 0.898),
            ],
            stops: [0.8, 0.99],
          ),
        ),
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            state.whenOrNull(initial: () {
              log("fired loadded event @builder");

              context.read<HomeBloc>().add(HomeScreenLoadedEvent());
            });
          },
          builder: (context, state) {
            state.mapOrNull(
              loading: (_) {
                return loadingWidget();
              },
              videosLoaded: (state) {
                return Column(
                  children: [
                    OpenContainer(
                      middleColor: Colors.black,
                      openColor: Colors.black,
                      closedColor: Colors.black,
                      closedBuilder: (context, action) => SearchBar(),
                      openBuilder: (context, action) => SearchBarView(),
                    ),
                    Expanded(
                      child: ListView.builder(
                        controller: context.watch<NavScrollControllerCubit>().state,
                        shrinkWrap: true,
                        itemCount: 10, //(state).videos?.length ?? 0,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 15.0, left: 20, right: 20),
                          child: ItemCardBig(
                            key: Key(index.toString()),
                            video: (state).videos![index],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              error: (_) {
                return Center(child: Text("Something went wrong"));
              },
            );

            return Text("Something went wrong");
          },
        ),
      ),
    );
  }
}
