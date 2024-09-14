import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';
import "package:audio_service/audio_service.dart" as audio_service;

GetIt getIt = GetIt.instance;

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

  // Add cross-flavor configuration here
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(await builder());
}
