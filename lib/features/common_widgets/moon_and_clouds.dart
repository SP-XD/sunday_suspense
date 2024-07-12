import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:midnight_suspense/gen/assets.gen.dart';

class MoonAndCloudsAppBar extends StatelessWidget {
  const MoonAndCloudsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      height: 300,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Assets.images.topLeftBgBlur.image(
              height: 220,
            ),
          ),
          Positioned(
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 20,
            right: 20,
            child: SizedBox(
              width: mediaQuery.width * 0.9,
              height: 80,
              child: TextField(
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.w100),
                  suffixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
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
                      colors: [
                        Colors.redAccent,
                        Colors.grey.shade800,
                        Colors.yellow.shade100,
                        Colors.grey.shade800,
                      ],
                      stops: [0.25, 0.4, 0.6, 0.8],
                      transform: GradientRotation(1),
                    ),
                    width: 0.2,
                  ),
                  enabledBorder: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Colors.redAccent,
                        Colors.grey.shade800,
                        Colors.yellow.shade100,
                        Colors.grey.shade800,
                      ],
                      stops: [0.25, 0.4, 0.6, 0.8],
                      transform: GradientRotation(1),
                    ),
                    width: 0.2,
                  ),
                  focusedBorder: GradientOutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.redAccent,
                        Colors.grey.shade800,
                        Colors.yellow.shade200,
                        Colors.grey.shade800,
                      ],
                      stops: [0.25, 0.4, 0.6, 0.8],
                      transform: GradientRotation(1),
                    ),
                    width: 0.2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 20,
              top: 40,
              child: Assets.images.owl.image(
                height: 170,
              )),
        ],
      ),
    );
  }
}
