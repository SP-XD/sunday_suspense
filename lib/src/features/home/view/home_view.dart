import 'dart:developer';

import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:midnight_suspense/src/bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/features/home/bloc/home_bloc.dart';
import 'package:midnight_suspense/src/features/player/player.dart';
import 'package:midnight_suspense/src/features/player/view/item_card_big.dart';
import 'package:midnight_suspense/src/features/searchbar/searchbar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        // height: MediaQuery.of(context).size.height,
        child: BlocConsumer<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeInitial) {
              log("fired loadded event @builder");

              context.read<HomeBloc>().add(HomeScreenLoadedEvent());
            }
            if (state is HomeVideosLoading) {
              return Center(
                child: LoadingAnimationWidget.staggeredDotsWave(
                  color: Colors.red,
                  size: 30,
                ),
              );
            }

            if (state is HomeVideosLoaded) {
              return Column(
                children: [
                  SearchBar(),
                  Expanded(
                    child: ListView.builder(
                      controller: context.watch<NavScrollControllerCubit>().state,
                      shrinkWrap: true,
                      itemCount: 10, //(state).videos?.length ?? 0,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 18.0, left: 15, right: 15),
                        child: ItemCardBig(
                          key: Key(index.toString()),
                          video: (state).videos![index],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }

            log(state.runtimeType.toString());

            return Text("Something went wrong");
          },
          listener: (context, state) {
            if (state is HomeScreenLoadedEvent) {
              log("Home screen loadded event");
            }
          },
        ),
      ),
    );
  }
}
