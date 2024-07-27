import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/bloc/nav_scroll_controller/nav_scroll_controller_cubit.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/src/features/home/bloc/home_bloc.dart';
import 'package:midnight_suspense/src/features/home/view/home_view.dart';
import 'package:midnight_suspense/src/features/navigation_tab/navigation_tab.dart';
import 'package:midnight_suspense/src/features/splash/splash.dart';
import 'package:midnight_suspense/src/l10n/l10n.dart';

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
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: SplashView(
        nextPage: RepositoryProvider(
          create: (context) => _videosRepository,
          child: MultiBlocProvider(
            providers: [
              BlocProvider<HomeBloc>(create: (context) => HomeBloc(_videosRepository)),
              BlocProvider(create: (context) => NavScrollControllerCubit())
            ],
            child: NavigationTabView(),
          ),
        ),
      ),
    );
  }
}
