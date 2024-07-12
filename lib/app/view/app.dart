import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/features/home/bloc/home_bloc.dart';
import 'package:midnight_suspense/features/home/view/home_view.dart';
import 'package:midnight_suspense/features/splash/splash.dart';
import 'package:midnight_suspense/l10n/l10n.dart';

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
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: RepositoryProvider(
          create: (context) => _videosRepository,
          child: BlocProvider(
            create: (context) => HomeBloc(_videosRepository),
            child: HomeView(),
          )),
    );
  }
}
