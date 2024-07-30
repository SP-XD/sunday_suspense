import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  double _searchResultsBoxHeight = 0;

  void _search() {
    setState(() {
      _searchResultsBoxHeight = 200;
      Future.delayed(Duration(seconds: 5), () {
        setState(() {
          _searchResultsBoxHeight = 0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: mediaQuery.width,
          height: 250,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              topLeftBgBlur(),
              cloudsAndMoon(mediaQuery),
              Positioned(
                top: 150,
                left: 20,
                right: 20,
                child: SizedBox(
                  width: mediaQuery.width * 0.9,
                  height: 80,
                  child: TextField(
                    style: TextStyle(color: Colors.grey),
                    onTap: () {
                      _search();
                    },
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w100),
                      suffixIcon: Assets.icons.search.svg(
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(Colors.grey.shade700, BlendMode.srcATop),
                      ),
                      suffixIconConstraints: BoxConstraints.tightFor(width: 60, height: 30),
                      contentPadding: EdgeInsets.only(
                        left: 80,
                        top: 20,
                        bottom: 20,
                      ),
                      filled: true,
                      fillColor: Colors.white.withAlpha(10),
                      border: GradientOutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.red,
                            Colors.grey.shade800.withOpacity(0.5),
                            Colors.grey.shade800.withOpacity(0.5),
                            Colors.grey.shade800,
                            Colors.grey.shade800.withOpacity(0.5),
                          ],
                          stops: [0.1, 0.35, 0.4, 0.6, 0.7],
                          transform: GradientRotation(0.9),
                        ),
                        width: 1.5,
                      ),
                      enabledBorder: GradientOutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.red,
                            Colors.grey.shade800.withOpacity(0.5),
                            Colors.grey.shade800.withOpacity(0.5),
                            Colors.grey.shade800,
                            Colors.grey.shade800.withOpacity(0.5),
                          ],
                          stops: [0.1, 0.35, 0.4, 0.6, 0.7],
                          transform: GradientRotation(0.9),
                        ),
                        width: 1.5,
                      ),
                      focusedBorder: GradientOutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.red,
                            Colors.grey.shade800.withOpacity(0.5),
                            Colors.grey.shade800.withOpacity(0.5),
                            Colors.grey.shade800,
                            Colors.grey.shade800.withOpacity(0.5),
                          ],
                          stops: [0.1, 0.35, 0.4, 0.6, 0.7],
                          transform: GradientRotation(0.9),
                        ),
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  top: 45,
                  child: Assets.images.owl.image(
                    height: 170,
                  )),
            ],
          ),
        ),
        AnimatedContainer(
          duration: 1.seconds,
          curve: Curves.easeInOut,
          height: _searchResultsBoxHeight,
          width: mediaQuery.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade800.withOpacity(0.5), width: 1.5),
            // border: GradientBoxBorder(
            //   gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [
            //       Colors.red,
            //       Colors.grey.shade800.withOpacity(0.5),
            //       Colors.grey.shade800.withOpacity(0.5),
            //       Colors.grey.shade800,
            //       Colors.grey.shade800.withOpacity(0.5),
            //     ],
            //     stops: [0.1, 0.35, 0.4, 0.6, 0.7],
            //     transform: GradientRotation(0.9),
            //   ),
            //   width: 1.5,
            // ),
          ),
          child: Center(
            child: Text(
              "Search for your favorite music",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Positioned cloudsAndMoon(Size mediaQuery) {
    return Positioned(
      top: 10,
      right: -10,
      child: SizedBox(
        width: mediaQuery.width * 0.8,
        height: 200,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              top: -30,
              child: Assets.images.cloudInverted
                  .image(
                    height: 120,
                  )
                  .animate(
                      // onPlay: (controller) => controller.repeat(),
                      )
                  .slideX(
                    duration: 6000.ms,
                    begin: -0.1,
                    end: 0,
                    curve: Curves.easeInOut,
                  ),
            ),
            Positioned(
              left: 100,
              top: -25,
              child: Assets.images.moon.image(
                height: 220,
              ),
            ),
            Positioned(
              right: -120,
              top: -15,
              child: Opacity(
                opacity: 0.9,
                child: Assets.images.cloudInverted
                    .image(
                      height: 100,
                    )
                    .animate()
                    .slideX(
                      duration: 6000.ms,
                      begin: 0,
                      end: -0.1,
                      curve: Curves.decelerate,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned topLeftBgBlur() {
    return Positioned(
      left: 0,
      top: 0,
      child: Assets.images.topLeftBgBlur.image(
        height: 220,
      ),
    );
  }
}
