import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'channel_id_model.dart';
import 'engagement_model.dart';
import 'thumbnail_set_model.dart';
import 'video_id_model.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@Embedded(ignore: {'copyWith'})
@Freezed(toJson: true, fromJson: true)
class VideoModel with _$VideoModel {
  /// Video URL.
  @ignore
  String get youtubeUrl => 'https://www.youtube.com/watch?v=$id';

  /// Video app URL.
  @ignore
  String get appUrl => 'https://midnightsuspense.in/share/watch?v=$id';

  /// Duration of the video in seconds watched by the user.
  @ignore
  Duration get watchedDurationConverted => Duration(seconds: duration ?? 0);

  /// total Duration of the video in seconds.
  @ignore
  Duration get totalDurationConverted => Duration(seconds: duration ?? 0);

  factory VideoModel({
    /// Video ID.
    VideoId? id,

    /// Video title.
    String? title,

    /// Video author.
    String? author,

    /// Video author Id.
    ChannelId? channelId,

    /// Video publish date.
    DateTime? publishDate,

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
      id: id,

      /// Video title.
      title: title,

      /// Video author.
      author: author,

      /// Video author Id.
      channelId: channelId,

      /// Video publish date.
      publishDate: publishDate,
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
    /// Video ID.
    VideoId? id,

    /// Video title.
    String? title,

    /// Video author.
    String? author,

    /// Video author Id.
    ChannelId? channelId,

    /// Video publish date.
    DateTime? publishDate,

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
}
