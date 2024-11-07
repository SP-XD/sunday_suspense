import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/offline_db_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart' as yt;

import 'channel_id_model.dart';
import 'engagement_model.dart';
import 'thumbnail_set_model.dart';
import 'video_id_model.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@Collection(ignore: {'copyWith'})
@Freezed(toJson: true, fromJson: true)
class VideoModel with _$VideoModel {
  /// Video URL.
  @ignore
  String get youtubeUrl => 'https://www.youtube.com/watch?v=${videoId?.value}';

  /// Video app URL.
  @ignore
  String get appUrl => 'https://midnightsuspense.in/share/watch?v=${videoId?.value}';

  /// Duration of the video in seconds watched by the user.
  @ignore
  Duration get watchedDurationConverted => Duration(seconds: duration ?? 0);

  /// total Duration of the video in seconds.
  @ignore
  Duration get totalDurationConverted => Duration(seconds: duration ?? 0);

  // ignore: invalid_annotation_target
  @Index()
  String get videoIdIndexed => videoId?.value ?? '';

  @override

  /// This is the id used by isar not the id of the video
  /// Use [videoId] to get the id of the video
  Id get id => id;

  factory VideoModel({
    /// Video ID.
    VideoId? videoId,

    /// Video title.
    String? title,

    /// Video author.
    String? author,

    /// Video author Id.
    ChannelId? channelId,

    /// Video uploadDate date.
    DateTime? uploadDate,

    /// Video description.
    String? description,

    /// Duration of the video in seconds watched by the user.
    int? watchedDuration,

    /// total Duration of the video in seconds.
    int? duration,

    /// Available thumbnails for this video.
    ThumbnailSet? thumbnails,

    /// Engagement? statistics for this video.
    Engagement? engagement,

    /// Returns true if this is a live stream.
    //ignore: avoid_positional_bool?ean_parameters
    bool? isLive,
  }) {
    return VideoModel._internal(
      /// Video ID.
      videoId: videoId,

      /// Video title.
      title: title,

      /// Video author.
      author: author,

      /// Video author Id.
      channelId: channelId,

      /// Video publish date.
      uploadDate: uploadDate,
      description: description,
      watchedDuration: watchedDuration,
      duration: duration,
      thumbnails: thumbnails,
      engagement: engagement,
      isLive: isLive,
    );
  }

  /// Initializes an instance of [Video]
  const factory VideoModel._internal({
    // ignore: unused_element
    @Default(Isar.autoIncrement) int id,

    /// Video ID.
    VideoId? videoId,

    /// Video title.
    String? title,

    /// Video author.
    String? author,

    /// Video author Id.
    ChannelId? channelId,

    /// Video uploadDate date.
    DateTime? uploadDate,

    /// Video description.
    String? description,

    /// Duration of the video in seconds watched by the user.
    int? watchedDuration,

    /// total Duration of the video in seconds.
    int? duration,

    /// Available thumbnails for this video.
    ThumbnailSet? thumbnails,

    /// Engagement? statistics for this video.
    Engagement? engagement,

    /// Returns true if this is a live stream.
    //ignore: avoid_positional_bool?ean_parameters
    bool? isLive,
  }) = _Video;

  // ignore: unused_element
  const VideoModel._();

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

  static List<VideoModel> videosLinksToJson(IsarLinks<VideoModel> videos) {
    videos.load();
    return videos.toList();
  }

  static IsarLinks<VideoModel> videosLinksFromJson(List<dynamic>? videos) {
    if (videos == null) {
      return IsarLinks<VideoModel>();
    }

    var dbProvider = getIt<OfflineDbProvider>();
    var videosCollection = dbProvider.db.collection<VideoModel>();
    var videoModels = videos.map((c) => VideoModel.fromJson(c as Map<String, dynamic>)).toList();
    videosCollection.putAll(videoModels);

    IsarLinks<VideoModel> videosLinks = IsarLinks<VideoModel>();
    videosLinks.addAll(videoModels);

    return videosLinks;
  }

  static VideoModel fromYoutubeVideoModel(yt.Video video) {
    return VideoModel(
      videoId: VideoId(idOrUrl: video.id.value),
      title: video.title,
      description: video.description,
      author: video.author,
      channelId: ChannelId(value: video.channelId.value),
      duration: video.duration?.inSeconds,
      thumbnails: ThumbnailSet(
        videoId: video.thumbnails.videoId,
      ),
      uploadDate: video.uploadDate,
      isLive: video.isLive,
      engagement: Engagement(
        viewCount: video.engagement.viewCount,
        likeCount: video.engagement.likeCount,
        dislikeCount: video.engagement.dislikeCount,
      ),
    );
  }
}
