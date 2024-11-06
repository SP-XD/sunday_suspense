import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:midnight_suspense/src/data/models/app_data_model.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/models/playlist_model.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/data/repositories/app_data_repository.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';
import "package:audio_service/audio_service.dart" as audio_service;
import 'package:midnight_suspense/src/services/bloc_manager_service.dart';

import 'src/data/data_provider/ytexplode_provider.dart';

GetIt getIt = GetIt.instance;
Logger logger = Logger();

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await dotenv.load(fileName: '.env');

  await WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  getIt.registerSingletonAsync(() async {
    final AudioService audioService = await audio_service.AudioService.init<AudioService>(
      builder: () => AudioService(),
      config: audio_service.AudioServiceConfig(
        androidNotificationChannelId: 'com.spxd.midnight_suspense.channel.audio',
        androidNotificationChannelName: 'Audio playback',
        androidNotificationOngoing: true,
      ),
    );

    return audioService;
  });

  var offlineDbProvider = getIt.registerSingleton(OfflineDbProvider(schemas: [
    AppDataSchema,
    CategoryModelSchema,
    VideoModelSchema,
    PlaylistModelSchema,
  ]));

  getIt.registerLazySingleton(() => YtExplodeProvider());
  getIt.registerLazySingleton(() => AppDataRepository(offlineDbProvider: offlineDbProvider));

  getIt.registerLazySingleton(() => VBlocManagerService());

  // Add cross-flavor configuration here
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(await builder());
}
