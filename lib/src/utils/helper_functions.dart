import 'package:midnight_suspense/src/data/models/channel_id_model.dart';
import 'package:midnight_suspense/src/data/models/engagement_model.dart';
import 'package:midnight_suspense/src/data/models/thumbnail_set_model.dart';
import 'package:midnight_suspense/src/data/models/video_id_model.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart'
    hide VideoId, ChannelId, ThumbnailSet, Engagement;

VideoModel fromYoutubeVideoToAppVideoModel(Video video) {
  return VideoModel(
    id: VideoId(idOrUrl: video.id.value),
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
