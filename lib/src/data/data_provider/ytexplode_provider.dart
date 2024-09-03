import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class YtExplodeProvider {
  factory YtExplodeProvider() {
    return _instance;
  }

  YtExplodeProvider._() {
    final Client httpClient;
    if (Platform.isAndroid) {
      final engine = CronetEngine.build(
        cacheMode: CacheMode.memory,
        cacheMaxSize: 2 * 1024 * 1024,
      );
      httpClient = CronetClient.fromCronetEngine(engine, closeEngine: true);
    } else if (Platform.isIOS || Platform.isMacOS) {
      final config = URLSessionConfiguration.ephemeralSessionConfiguration()
        ..cache = URLCache.withCapacity(memoryCapacity: 2 * 1024 * 1024);
      httpClient = CupertinoClient.fromSessionConfiguration(config);
    } else {
      httpClient = IOClient(HttpClient());
    }

    var ytHttpClient = YoutubeHttpClient(httpClient);
    ytExplodeInstance = YoutubeExplode(ytHttpClient);
  }

  YoutubeExplode? ytExplodeInstance;

  static final YtExplodeProvider _instance = YtExplodeProvider._();
}
