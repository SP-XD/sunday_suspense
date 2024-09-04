import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'thumbnail_set_model.freezed.dart';
part 'thumbnail_set_model.g.dart';

/// Set of thumbnails for a video.
@Embedded(ignore: {'copyWith'})
@Freezed(toJson: true, fromJson: true)
class ThumbnailSet with _$ThumbnailSet {
  /// Initializes an instance of [ThumbnailSet]
  factory ThumbnailSet({
    /// Video id.
    @Default(null) String? videoId,
  }) {
    if (videoId == null) {
      throw ArgumentError.value(
        videoId,
        'videoId',
        'Invalid YouTube video ID',
      );
    }
    return ThumbnailSet._internal(videoId);
  }

  const ThumbnailSet._();

  const factory ThumbnailSet._internal(
    /// Video id.
    String? videoId,
  ) = _ThumbnailSet;

  /// Low resolution thumbnail URL.
  String get lowResUrl => 'https://img.youtube.com/vi/$videoId/default.jpg';

  /// Medium resolution thumbnail URL.
  String get mediumResUrl => 'https://img.youtube.com/vi/$videoId/mqdefault.jpg';

  /// High resolution thumbnail URL.
  String get highResUrl => 'https://img.youtube.com/vi/$videoId/hqdefault.jpg';

  /// Standard resolution thumbnail URL.
  /// Not always available.
  String get standardResUrl => 'https://img.youtube.com/vi/$videoId/sddefault.jpg';

  /// Max resolution thumbnail URL.
  /// Not always available.
  String get maxResUrl => 'https://img.youtube.com/vi/$videoId/maxresdefault.jpg';

  factory ThumbnailSet.fromJson(Map<String, dynamic> json) => _$ThumbnailSetFromJson(json);
}
