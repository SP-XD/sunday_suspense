import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midnight_suspense/src/features/category/view/category_tab_widget.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/shared_bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/features/home/bloc/home_bloc.dart';
import 'package:midnight_suspense/src/features/player/player.dart';
import 'package:midnight_suspense/src/features/player/view/item_card_big.dart';
import 'package:midnight_suspense/src/features/searchbar/searchbar.dart';

@RoutePage()
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
        width: MediaQuery.of(context).size.width,
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
            Expanded(
              flex: 1,
              child: CategoryTabWidget(),
            )
          ],
        ),
      ),
    );
  }
}
