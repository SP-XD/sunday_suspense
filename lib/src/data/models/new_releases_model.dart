import 'package:isar/isar.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';

part 'new_releases_model.g.dart';

@Embedded(ignore: {"copyWith"})
class NewReleasesModel {
  DateTime? lastUpdatedDate;
  List<VideoModel>? releases;

  NewReleasesModel({this.lastUpdatedDate, this.releases});
}
