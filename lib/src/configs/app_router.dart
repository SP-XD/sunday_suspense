import 'package:auto_route/auto_route.dart';
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
          type: RouteType.custom(transitionsBuilder: TransitionsBuilders.fadeIn),
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
