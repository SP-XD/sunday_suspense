import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:midnight_suspense/src/features/settings/settings.dart';
import 'package:midnight_suspense/src/shared_bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/features/blank/blank.dart';
import 'package:midnight_suspense/src/features/home/home.dart';
import 'package:midnight_suspense/src/features/player/player.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';
import 'package:scroll_to_hide/scroll_to_hide.dart';

class NavigationTabView extends StatefulWidget {
  const NavigationTabView({super.key});

  @override
  State<NavigationTabView> createState() => _NavigationTabViewState();
}

class _NavigationTabViewState extends State<NavigationTabView> with TickerProviderStateMixin {
  AnimationController? navTabAnimationController;
  int selectedIndex = 0;
  double _miniPlayerHeight = 0;
  GlobalKey _sizedChangedLayoutKey = GlobalKey();

  List<Widget> pages = [
    HomeView(),
    BlankView(),
    SettingsView(),
  ];

  @override
  void initState() {
    super.initState();
    navTabAnimationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    navTabAnimationController!.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateContainerHeight();
    });
  }

  void _updateContainerHeight() {
    log('updateContainerHeight called');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      log('sizedChangedLayoutKey: ${_sizedChangedLayoutKey.currentContext?.size?.height}');
      RenderBox? renderBox = _sizedChangedLayoutKey.currentContext?.findRenderObject() as RenderBox?;
      setState(() {
        _miniPlayerHeight = renderBox?.size.height ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[selectedIndex]
          .animate(
            controller: navTabAnimationController,
          )
          .fadeIn(
            duration: Duration(milliseconds: 500),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              //   Colors.transparent,
              Color.fromARGB(190, 60, 4, 0),
            ],
            stops: [0.1, 0.9],
          ),
        ),
        child: ScrollToHide(
          scrollController: context.watch<NavScrollControllerCubit>().state,
          hideDirection: Axis.vertical,
          height: 80 + _miniPlayerHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade900,
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20, tileMode: TileMode.decal),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 70 + _miniPlayerHeight,
                      constraints: BoxConstraints(maxHeight: 145, minHeight: 70),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        //   border: Border.all(
                        //     color: Colors.grey.withOpacity(0.1),
                        //     width: 1,
                        //     strokeAlign: BorderSide.strokeAlignInside,
                        //   ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.red.shade700.withOpacity(0.1),
                        //     spreadRadius: 1,
                        //     blurRadius: 5,
                        //     offset: Offset(1, 1),
                        //   ),
                        // ],
                      ),
                      child: NotificationListener<SizeChangedLayoutNotification>(
                        onNotification: (notification) {
                          _updateContainerHeight();
                          return true;
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizeChangedLayoutNotifier(
                              key: _sizedChangedLayoutKey,
                              child: MiniPlayer(),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: NavigationBar(
                                selectedIndex: selectedIndex,
                                onDestinationSelected: (value) {
                                  log('value: $value');
                                  HapticFeedback.lightImpact();
                                  navTabAnimationController!.reset();
                                  navTabAnimationController!.forward();
                                  setState(() => selectedIndex = value);
                                },
                                height: 65,
                                backgroundColor: Colors.transparent,
                                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                                indicatorColor: Colors.transparent,
                                overlayColor: WidgetStateProperty.all(Colors.black54),
                                destinations: [
                                  NavigationDestination(
                                    icon: iconUnselected(Assets.icons.home.path),
                                    label: 'Home',
                                    selectedIcon: iconSelected(Assets.icons.home.path),
                                  ),
                                  NavigationDestination(
                                    icon: iconUnselected(Assets.icons.playlist.path),
                                    label: 'Category',
                                    selectedIcon: iconSelected(Assets.icons.playlist.path),
                                  ),
                                  NavigationDestination(
                                    icon: iconUnselected(Assets.icons.settings.path),
                                    label: 'Settings',
                                    selectedIcon: iconSelected(Assets.icons.settings.path),
                                  ),
                                ],
                              ),
                            ),
                            // Measure the height of the Column
                            //   LayoutBuilder(
                            //     builder: (context, innerConstraints) {
                            //       WidgetsBinding.instance.addPostFrameCallback((_) {
                            //         setState(() {
                            //           log('innerConstraints: ${_columnKey.currentContext?.size?.height}');
                            //           _containerHeight = innerConstraints.minHeight;
                            //         });
                            //       });
                            //       return SizedBox.shrink();
                            //     },
                            //   ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  SvgPicture iconUnselected(String path) => SvgPicture.asset(
        path,
        height: 28,
        width: 28,
        colorFilter: ColorFilter.mode(Colors.grey.shade600, BlendMode.srcIn),
      );

  SvgPicture iconSelected(String path) => SvgPicture.asset(
        path,
        height: 28,
        width: 28,
        colorFilter: ColorFilter.mode(Colors.red.shade700, BlendMode.srcIn),
      );
}
