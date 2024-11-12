import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/configs/app_router.gr.dart';
import 'package:midnight_suspense/src/data/repositories/app_data_repository.dart';
import 'package:midnight_suspense/src/utils/extensions.dart';

@AutoRouterConfig(
  replaceInRouteName: 'View|Page|Screen,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute.guarded(
          onNavigation: (resolver, router) async {
            final appDataRepo = getIt<AppDataRepository>();

            // if (!appDataRepo.getOnboardingStatus().isNullOrFalse) {
            //   resolver.next(true);
            // } else {
            appDataRepo.watchOnboardingStatus().listen((status) {
              logger.d('watch onboarding status: ${status}');
              if (!status.isNullOrFalse) {
                resolver.next();
              } else {
                resolver.redirect(PreferredLanguagesRoute());
              }
            });
            // }
          },
          page: NavigationTabRoute.page,
          type: RouteType.custom(
            // transitionsBuilder: TransitionsBuilders.fadeIn,
            durationInMilliseconds: 1100,
            transitionsBuilder: fadeInFadeOut,
            // transitionsBuilder: (context, animation, secondaryAnimation, child) {
            //   logger.i("Animation ${animation.isAnimating} ${animation.value}");
            //   logger.i("secondaryAnimation ${secondaryAnimation.isAnimating} ${secondaryAnimation.value}");
            //   return ScaleTransition(
            //     scale: animation,
            //     child: ScaleTransition(
            //       scale: Tween<double>(begin: 1, end: 0).animate(secondaryAnimation),
            //       child: child,
            //     ),
            //   );
            // },
          ),
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: CategoryRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: PlayerRoute.page),
        AutoRoute(page: PreferredLanguagesRoute.page),
        AutoRoute(page: MissingRoute.page),
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
      ];
}

Widget fadeInFadeOut(
    BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(
    opacity: animation.drive(CurveTween(curve: Curves.easeInOut)),
    child: FadeTransition(
      opacity: secondaryAnimation.drive(
        Tween(begin: 1.0, end: .0).chain(
          CurveTween(curve: Curves.easeInOut),
        ),
      ),
      child: child,
    ),
  );
}
