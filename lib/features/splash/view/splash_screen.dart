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
              top: mediaQuery.height * 0.15,
              child: Assets.images.hauntedHouseFrame1
                  .image(
                    fit: BoxFit.fill,
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
                        fit: BoxFit.fill,
                        width: mediaQuery.width,
                      );
                    },
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
                    duration: 1000.ms,
                    begin: -0.1,
                    end: 0,
                    curve: Curves.easeInOut,
                  ),
            ),
            Positioned(
              left: 10,
              top: mediaQuery.height * 0.05,
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
                      duration: 1000.ms,
                      begin: 0,
                      end: -0.1,
                      curve: Curves.easeInOut,
                    ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Assets.images.splashBgBlurs.image(
                width: mediaQuery.width,
                fit: BoxFit.contain,
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
                    delay: 1000.ms,
                  )
                  .shimmer(
                    color: Colors.redAccent,
                    blendMode: BlendMode.srcATop,
                    size: 0.5,
                    duration: 2000.ms,
                  )
                  .animate()
                  .slideY(
                    duration: 1000.ms,
                    begin: 0,
                    end: -0.1,
                    curve: Curves.easeInOut,
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
        right: -30,
        top: mediaQuery.height * 0.2,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 1800.ms,
              begin: 0,
              end: 0.7,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: 60,
        top: mediaQuery.height * 0.2,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 1000.ms,
              begin: 0,
              end: -0.7,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: 10,
        top: mediaQuery.height * 0.3,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 1800.ms,
              begin: 0,
              end: -0.7,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: -40,
        top: mediaQuery.height * 0.3,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 1800.ms,
              begin: 0,
              end: 0.7,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: -30,
        top: mediaQuery.height * 0.4,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 900.ms,
              begin: 0,
              end: 0.7,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: -20,
        top: mediaQuery.height * 0.5,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 1000.ms,
              begin: 0,
              end: -0.7,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: 20,
        top: mediaQuery.height * 0.52,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 900.ms,
              begin: 0,
              end: 0.8,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: -40,
        top: mediaQuery.height * 0.6,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 900.ms,
              begin: 0,
              end: -0.8,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: -20,
        top: mediaQuery.height * 0.7,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 900.ms,
              begin: 0,
              end: 0.8,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: -30,
        top: mediaQuery.height * 0.68,
        child: Assets.images.cloudOriginal
            .image(
              height: 300,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 900.ms,
              begin: 0,
              end: -0.8,
              curve: Curves.easeInOut,
            ),
      ),
      Positioned(
        right: -20,
        top: mediaQuery.height * 0.85,
        child: Assets.images.cloudOriginal
            .image(
              height: 200,
            )
            .animate(
                //   onPlay: (controller) => controller.repeat(),
                )
            .slideX(
              duration: 1000.ms,
              begin: 0,
              end: -0.6,
              curve: Curves.easeInOut,
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
              duration: 1000.ms,
              begin: Offset.zero,
              end: const Offset(0.5, 0.38),
              curve: Curves.easeInOut,
            ),
      ),
    ];
  }
}
