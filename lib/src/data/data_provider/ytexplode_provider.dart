import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class YtExplodeProvider {
  factory YtExplodeProvider() {
    return _instance;
  }

  YtExplodeProvider._() {
    yt = YoutubeExplode();
  }

  YoutubeExplode? yt;

  static final YtExplodeProvider _instance = YtExplodeProvider._();
}
