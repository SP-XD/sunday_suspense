// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  /// Video ID.
  VideoId? get id => throw _privateConstructorUsedError;

  /// Video title.
  String? get title => throw _privateConstructorUsedError;

  /// Video author.
  String? get author => throw _privateConstructorUsedError;

  /// Video author Id.
  ChannelId? get channelId => throw _privateConstructorUsedError;

  /// Video uploadDate date.
  DateTime? get uploadDate => throw _privateConstructorUsedError;

  /// Video description.
  String? get description => throw _privateConstructorUsedError;

  /// Duration of the video in seconds watched by the user.
  int? get watchedDuration => throw _privateConstructorUsedError;

  /// total Duration of the video in seconds.
  int? get duration => throw _privateConstructorUsedError;

  /// Available thumbnails for this video.
  ThumbnailSet? get thumbnails => throw _privateConstructorUsedError;

  /// Engagement? statistics for this video.
  Engagement? get engagement => throw _privateConstructorUsedError;

  /// Returns true if this is a live stream.
//ignore: avoid_positional_bool?ean_parameters
  bool? get isLive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res, VideoModel>;
  @useResult
  $Res call(
      {VideoId? id,
      String? title,
      String? author,
      ChannelId? channelId,
      DateTime? uploadDate,
      String? description,
      int? watchedDuration,
      int? duration,
      ThumbnailSet? thumbnails,
      Engagement? engagement,
      bool? isLive});

  $VideoIdCopyWith<$Res>? get id;
  $ChannelIdCopyWith<$Res>? get channelId;
  $ThumbnailSetCopyWith<$Res>? get thumbnails;
  $EngagementCopyWith<$Res>? get engagement;
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res, $Val extends VideoModel>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? channelId = freezed,
    Object? uploadDate = freezed,
    Object? description = freezed,
    Object? watchedDuration = freezed,
    Object? duration = freezed,
    Object? thumbnails = freezed,
    Object? engagement = freezed,
    Object? isLive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId?,
      uploadDate: freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      watchedDuration: freezed == watchedDuration
          ? _value.watchedDuration
          : watchedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnails: freezed == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet?,
      engagement: freezed == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement?,
      isLive: freezed == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoIdCopyWith<$Res>? get id {
    if (_value.id == null) {
      return null;
    }

    return $VideoIdCopyWith<$Res>(_value.id!, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res>? get channelId {
    if (_value.channelId == null) {
      return null;
    }

    return $ChannelIdCopyWith<$Res>(_value.channelId!, (value) {
      return _then(_value.copyWith(channelId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThumbnailSetCopyWith<$Res>? get thumbnails {
    if (_value.thumbnails == null) {
      return null;
    }

    return $ThumbnailSetCopyWith<$Res>(_value.thumbnails!, (value) {
      return _then(_value.copyWith(thumbnails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EngagementCopyWith<$Res>? get engagement {
    if (_value.engagement == null) {
      return null;
    }

    return $EngagementCopyWith<$Res>(_value.engagement!, (value) {
      return _then(_value.copyWith(engagement: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VideoId? id,
      String? title,
      String? author,
      ChannelId? channelId,
      DateTime? uploadDate,
      String? description,
      int? watchedDuration,
      int? duration,
      ThumbnailSet? thumbnails,
      Engagement? engagement,
      bool? isLive});

  @override
  $VideoIdCopyWith<$Res>? get id;
  @override
  $ChannelIdCopyWith<$Res>? get channelId;
  @override
  $ThumbnailSetCopyWith<$Res>? get thumbnails;
  @override
  $EngagementCopyWith<$Res>? get engagement;
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoModelCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? channelId = freezed,
    Object? uploadDate = freezed,
    Object? description = freezed,
    Object? watchedDuration = freezed,
    Object? duration = freezed,
    Object? thumbnails = freezed,
    Object? engagement = freezed,
    Object? isLive = freezed,
  }) {
    return _then(_$VideoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as VideoId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId?,
      uploadDate: freezed == uploadDate
          ? _value.uploadDate
          : uploadDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      watchedDuration: freezed == watchedDuration
          ? _value.watchedDuration
          : watchedDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnails: freezed == thumbnails
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as ThumbnailSet?,
      engagement: freezed == engagement
          ? _value.engagement
          : engagement // ignore: cast_nullable_to_non_nullable
              as Engagement?,
      isLive: freezed == isLive
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoImpl extends _Video {
  const _$VideoImpl(
      {this.id,
      this.title,
      this.author,
      this.channelId,
      this.uploadDate,
      this.description,
      this.watchedDuration,
      this.duration,
      this.thumbnails,
      this.engagement,
      this.isLive})
      : super._();

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  /// Video ID.
  @override
  final VideoId? id;

  /// Video title.
  @override
  final String? title;

  /// Video author.
  @override
  final String? author;

  /// Video author Id.
  @override
  final ChannelId? channelId;

  /// Video uploadDate date.
  @override
  final DateTime? uploadDate;

  /// Video description.
  @override
  final String? description;

  /// Duration of the video in seconds watched by the user.
  @override
  final int? watchedDuration;

  /// total Duration of the video in seconds.
  @override
  final int? duration;

  /// Available thumbnails for this video.
  @override
  final ThumbnailSet? thumbnails;

  /// Engagement? statistics for this video.
  @override
  final Engagement? engagement;

  /// Returns true if this is a live stream.
//ignore: avoid_positional_bool?ean_parameters
  @override
  final bool? isLive;

  @override
  String toString() {
    return 'VideoModel._internal(id: $id, title: $title, author: $author, channelId: $channelId, uploadDate: $uploadDate, description: $description, watchedDuration: $watchedDuration, duration: $duration, thumbnails: $thumbnails, engagement: $engagement, isLive: $isLive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.uploadDate, uploadDate) ||
                other.uploadDate == uploadDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.watchedDuration, watchedDuration) ||
                other.watchedDuration == watchedDuration) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.thumbnails, thumbnails) ||
                other.thumbnails == thumbnails) &&
            (identical(other.engagement, engagement) ||
                other.engagement == engagement) &&
            (identical(other.isLive, isLive) || other.isLive == isLive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      channelId,
      uploadDate,
      description,
      watchedDuration,
      duration,
      thumbnails,
      engagement,
      isLive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video extends VideoModel {
  const factory _Video(
      {final VideoId? id,
      final String? title,
      final String? author,
      final ChannelId? channelId,
      final DateTime? uploadDate,
      final String? description,
      final int? watchedDuration,
      final int? duration,
      final ThumbnailSet? thumbnails,
      final Engagement? engagement,
      final bool? isLive}) = _$VideoImpl;
  const _Video._() : super._();

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override

  /// Video ID.
  VideoId? get id;
  @override

  /// Video title.
  String? get title;
  @override

  /// Video author.
  String? get author;
  @override

  /// Video author Id.
  ChannelId? get channelId;
  @override

  /// Video uploadDate date.
  DateTime? get uploadDate;
  @override

  /// Video description.
  String? get description;
  @override

  /// Duration of the video in seconds watched by the user.
  int? get watchedDuration;
  @override

  /// total Duration of the video in seconds.
  int? get duration;
  @override

  /// Available thumbnails for this video.
  ThumbnailSet? get thumbnails;
  @override

  /// Engagement? statistics for this video.
  Engagement? get engagement;
  @override

  /// Returns true if this is a live stream.
//ignore: avoid_positional_bool?ean_parameters
  bool? get isLive;
  @override
  @JsonKey(ignore: true)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
