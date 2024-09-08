import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/shared_bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/features/home/bloc/home_bloc.dart';
import 'package:midnight_suspense/src/features/player/player.dart';
import 'package:midnight_suspense/src/features/player/view/item_card_big.dart';
import 'package:midnight_suspense/src/features/searchbar/searchbar.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.black,
              // hex code color
              //   Color.fromRGBO(59, 0, 0, 0.898),
            ],
            stops: [0.8, 0.99],
          ),
        ),
        child: Column(
          children: [
            SearchBar(),
            // OpenContainer(
            //   middleColor: Colors.black,
            //   openColor: Colors.black,
            //   closedColor: Colors.black,
            //   closedBuilder: (context, action) => SearchBar(),
            //   openBuilder: (context, action) => SearchBarView(),
            // ),
            BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) {
                // log("state: $state @listener");
              },
              builder: (context, state) {
                // log("state: $state @builder");
                return state.map(
                  initial: (_) {
                    context.read<HomeBloc>().add(HomeScreenLoadedEvent());

                    return Expanded(child: loadingWidget());
                  },
                  loading: (_) {
                    return Expanded(child: loadingWidget());
                  },
                  videosLoaded: (states) {
                    return Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TabBar(
                            controller: _tabController,
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
                            tabs: [
                              Tab(text: "Sunday Suspense"),
                              Tab(text: "Midnight Station"),
                              Tab(text: "Horror SP XD"),
                              Tab(text: "Horror SP XD"),
                              Tab(text: "Horror SP XD"),
                            ],
                          ),
                          // TabBarView(children: []),
                          Expanded(
                            child: ListView.builder(
                              controller: context.watch<NavScrollControllerCubit>().state,
                              shrinkWrap: true,
                              itemCount: states.videos?.length ?? 10, //(state).videos?.length ?? 0,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(bottom: 15.0, left: 20, right: 20),
                                child: ItemCardBig(
                                  key: Key(index.toString()),
                                  video: states.videos![index],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  error: (_) {
                    return Center(child: Text("Something went wrong"));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
