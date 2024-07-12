import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/features/common_widgets/moon_and_clouds.dart';
import 'package:midnight_suspense/features/home/bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                child: CircularProgressIndicator(),
              );
            }

            if (state is HomeVideosLoaded) {
              return Column(
                children: [
                  MoonAndCloudsAppBar(),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: (state).videos?.length ?? 0,
                      itemBuilder: (context, index) => ListTile(
                        key: Key(index.toString()),
                        subtitle: Text(
                          (state).videos![index].toString(),
                          style: TextStyle(color: Colors.white),
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
            if (state is HomeInitial) {
              log("fired loadded event");

              context.read<HomeBloc>().add(HomeScreenLoadedEvent());
            }
          },
        ),
      ),
    );
  }
}
