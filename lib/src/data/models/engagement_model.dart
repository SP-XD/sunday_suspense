import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'engagement_model.freezed.dart';
part 'engagement_model.g.dart';

/// User activity statistics.
@Embedded(ignore: {'copyWith', 'avgRating'})
@Freezed(toJson: true, fromJson: true)
class Engagement with _$Engagement {
  const factory Engagement({
    /// View count.
    @Default(null) int? viewCount,

    /// Like count.
    @Default(null) int? likeCount,

    /// Dislike count.
    @Default(null) int? dislikeCount,
  }) = _Engagement;

  /// Average user rating in stars (1 star to 5 stars).
  /// Returns -1 if likeCount or dislikeCount is null.
  num get avgRating {
    if (likeCount == null || dislikeCount == null) {
      return -1;
    }
    if (likeCount! + dislikeCount! == 0) {
      return 0;
    }
    return 1 + 4.0 * likeCount! / (likeCount! + dislikeCount!);
  }

  // ignore: unused_element
  const Engagement._();

  factory Engagement.fromJson(Map<String, dynamic> json) => _$EngagementFromJson(json);
}
