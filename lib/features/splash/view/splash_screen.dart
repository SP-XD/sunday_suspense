import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:midnight_suspense/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: mediaQuery.width,
        height: mediaQuery.height,
        child: Stack(
          children: [
            Positioned(
              top: 120,
              child: Assets.images.hauntedHouseFrame1
                  .image(
                    fit: BoxFit.contain,
                    width: mediaQuery.width,
                  )
                  .animate(
                    onPlay: (controller) => controller.repeat(
                      reverse: true,
                    ),
                  )
                  .crossfade(
                    duration: 1500.ms,
                    delay: 0.ms,
                    builder: (context) {
                      return Assets.images.hauntedHouseFrame2.image(
                        fit: BoxFit.contain,
                        width: mediaQuery.width,
                      );
                    },
                  ),
            ),
            Positioned(
              top: -100,
              left: -150,
              child: Assets.images.cloudInverted.image(
                height: 300,
              ),
            ),
            Positioned(
              left: -150,
              top: 0,
              child: Assets.images.cloudInverted
                  .image(
                    height: 200,
                  )
                  .animate(
                      // onPlay: (controller) => controller.repeat(),
                      )
                  .slideX(
                    duration: 2000.ms,
                    begin: -0.1,
                    end: 0,
                    curve: Curves.easeInOut,
                  ),
            ),
            Positioned(
              left: 10,
              top: 40,
              child: Assets.images.moon.image(
                height: 250,
              ),
            ),
            Positioned(
              right: -210,
              top: 0,
              child: Opacity(
                opacity: 0.9,
                child: Assets.images.cloudInverted
                    .image(
                      height: 200,
                    )
                    .animate()
                    .slideX(
                      duration: 2000.ms,
                      begin: 0,
                      end: -0.1,
                      curve: Curves.decelerate,
                    ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black],
                    stops: [0.3, 0.6],
                  ),
                ),
                child: Assets.images.splashBgBlurs.image(
                  width: mediaQuery.width,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: -mediaQuery.height * 0.035,
              child: Assets.images.splashTitle
                  .image(
                    width: mediaQuery.width,
                  )
                  .animate(
                    onPlay: (controller) => controller.repeat(),
                    delay: 2000.ms,
                  )
                  .shimmer(
                    color: Colors.redAccent,
                    blendMode: BlendMode.srcATop,
                    size: 0.5,
                    duration: 2000.ms,
                  )
                  .animate()
                  .slideY(
                    duration: 2000.ms,
                    begin: 0,
                    end: -0.1,
                    curve: Curves.decelerate,
                  ),
            ),
            ...cloudCurtain(mediaQuery),
          ],
        ),
      ),
    );
  }

  List<Positioned> cloudCurtain(Size mediaQuery) {
    return [
      Positioned(
        top: mediaQuery.height * 0.03,
        left: 0,
        child: Assets.images.cloudInverted
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2200.ms,
              begin: 0,
              end: -0.82,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.10,
        right: 0,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: 0.81,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.2,
        left: 0,
        child: Assets.images.cloudInverted
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: -0.82,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.3,
        right: 0,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: 0.82,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.35,
        left: 0,
        child: Assets.images.cloudInverted
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: -0.82,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.45,
        left: 0,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: -0.81,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.4,
        right: 0,
        child: Assets.images.cloudInverted
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: 0.82,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.55,
        left: 0,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: -0.81,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.6,
        right: 0,
        child: Assets.images.cloudInverted
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: 0.81,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.65,
        left: 0,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: -0.81,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        top: mediaQuery.height * 0.75,
        left: 0,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 2000.ms,
              begin: 0,
              end: -0.7,
              curve: Curves.decelerate,
            ),
      ),
      Positioned(
        right: -10,
        top: mediaQuery.height * 0.8,
        child: Assets.images.cloudOriginal
            .image(
              height: 200,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slide(
              duration: 2000.ms,
              begin: Offset.zero,
              end: const Offset(0.5, 0.38),
              curve: Curves.decelerate,
            ),
      ),
    ];
  }
}
