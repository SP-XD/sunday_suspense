import 'package:isar/isar.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';

// part 'new_releases_model.g.dart';

/// TODO: fix this class, might have improper initialization
// @Embedded(ignore: {"copyWith"})
// class NewReleasesModel {
//   DateTime? lastUpdatedDate;
//   IsarLinks<VideoModel> releases = IsarLinks<VideoModel>();

//   NewReleasesModel({DateTime? lastUpdatedDate, List<VideoModel>? releases}) {
//     NewReleasesModel._interval(lastUpdatedDate ?? DateTime.now(), releases ?? []);
//   }

//   NewReleasesModel._interval(DateTime lastUpdatedDate, List<VideoModel> releases) {
//     this.lastUpdatedDate = lastUpdatedDate;
//     var videoLinks = IsarLinks<VideoModel>();
//     videoLinks.addAll(releases);
//     videoLinks.save();
//     this.releases = videoLinks;
//   }
// }
