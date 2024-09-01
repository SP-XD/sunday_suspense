import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/shared_bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/src/features/home/bloc/home_bloc.dart';
import 'package:midnight_suspense/src/features/navigation_tab/navigation_tab.dart';
import 'package:midnight_suspense/src/features/splash/splash.dart';
import 'package:midnight_suspense/src/l10n/l10n.dart';
import 'package:midnight_suspense/src/utils/custom_slider_shapes.dart';

import 'features/player/bloc/player_bloc.dart';
import 'features/searchbar/bloc/searchbar_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final VideosRepository _videosRepository;

  @override
  void initState() {
    super.initState();
    _videosRepository = VideosRepository();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => _videosRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (context) => HomeBloc(_videosRepository)),
          BlocProvider(create: (context) => NavScrollControllerCubit()),
          BlocProvider(create: (context) => PlayerBloc()),
          BlocProvider(create: (context) => SearchbarBloc(_videosRepository)),
        ],
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.red.shade700,
            primarySwatch: Colors.red,
            appBarTheme: AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                ),
            scaffoldBackgroundColor: Color.fromARGB(255, 15, 15, 15),
            sliderTheme: SliderThemeData(
              trackHeight: 0.5,
              trackShape: CustomSliderTrackShape(),
              activeTrackColor: Colors.red.shade800,
              inactiveTrackColor: Colors.grey.shade800,
              thumbShape: CustomSliderThumbShape(enabledThumbRadius: 5.0),
              thumbColor: Colors.red.shade800,
              overlayColor: Colors.pink.withOpacity(0.2),
              overlayShape: CustomSliderOverlayShape(),
              tickMarkShape: RoundSliderTickMarkShape(),
              activeTickMarkColor: Colors.red.shade800,
              inactiveTickMarkColor: Colors.white,
              valueIndicatorShape: PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: Colors.black,
              valueIndicatorTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            useMaterial3: true,
          ),
          themeMode: ThemeMode.dark,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
          home: SplashView(
            nextPage: NavigationTabView(),
          ),
        ),
      ),
    );
  }
}
