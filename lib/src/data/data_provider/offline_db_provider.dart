import 'package:hive_flutter/hive_flutter.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class OfflineDbProvider {
  OfflineDbProvider() {
    final box = Hive.box<Video>('offline_db');
  }
}
