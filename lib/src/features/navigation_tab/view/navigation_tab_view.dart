import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/features/blank/blank.dart';
import 'package:midnight_suspense/src/features/home/home.dart';
import 'package:midnight_suspense/src/features/player/player.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';

class NavigationTabView extends StatefulWidget {
  const NavigationTabView({super.key});

  @override
  State<NavigationTabView> createState() => _NavigationTabViewState();
}

class _NavigationTabViewState extends State<NavigationTabView> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomeView(),
    BlankView(),
    BlankView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ScrollToHide(
        scrollController: context.watch<NavScrollControllerCubit>().state,
        hideDirection: Axis.vertical,
        height: 150,
        child: Container(
          height: 150,
          width: double.maxFinite,
          child: Column(
            children: [
              MiniPlayer(),
              BottomNavigationBar(
                onTap: (value) => setState(() => selectedIndex = value),
                backgroundColor: Colors.black54,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                enableFeedback: true,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.playlist_play), label: 'Queue'),
                  BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
