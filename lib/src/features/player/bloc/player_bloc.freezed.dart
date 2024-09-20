// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) playFromChannel,
    required TResult Function(int playIndex) playFromQueue,
    required TResult Function() pause,
    required TResult Function() play,
    required TResult Function() stop,
    required TResult Function(Duration position) seek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? playFromChannel,
    TResult? Function(int playIndex)? playFromQueue,
    TResult? Function()? pause,
    TResult? Function()? play,
    TResult? Function()? stop,
    TResult? Function(Duration position)? seek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? playFromChannel,
    TResult Function(int playIndex)? playFromQueue,
    TResult Function()? pause,
    TResult Function()? play,
    TResult Function()? stop,
    TResult Function(Duration position)? seek,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayFromChannel value) playFromChannel,
    required TResult Function(_PlayFromQueue value) playFromQueue,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Seek value) seek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayFromChannel value)? playFromChannel,
    TResult? Function(_PlayFromQueue value)? playFromQueue,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Seek value)? seek,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayFromChannel value)? playFromChannel,
    TResult Function(_PlayFromQueue value)? playFromQueue,
    TResult Function(_Pause value)? pause,
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    TResult Function(_Seek value)? seek,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlayFromChannelImplCopyWith<$Res> {
  factory _$$PlayFromChannelImplCopyWith(_$PlayFromChannelImpl value,
          $Res Function(_$PlayFromChannelImpl) then) =
      __$$PlayFromChannelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoModel video});

  $VideoModelCopyWith<$Res> get video;
}

/// @nodoc
class __$$PlayFromChannelImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayFromChannelImpl>
    implements _$$PlayFromChannelImplCopyWith<$Res> {
  __$$PlayFromChannelImplCopyWithImpl(
      _$PlayFromChannelImpl _value, $Res Function(_$PlayFromChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$PlayFromChannelImpl(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoModel,
    ));
  }

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoModelCopyWith<$Res> get video {
    return $VideoModelCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc

class _$PlayFromChannelImpl implements _PlayFromChannel {
  const _$PlayFromChannelImpl({required this.video});

  @override
  final VideoModel video;

  @override
  String toString() {
    return 'PlayerEvent.playFromChannel(video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayFromChannelImpl &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayFromChannelImplCopyWith<_$PlayFromChannelImpl> get copyWith =>
      __$$PlayFromChannelImplCopyWithImpl<_$PlayFromChannelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) playFromChannel,
    required TResult Function(int playIndex) playFromQueue,
    required TResult Function() pause,
    required TResult Function() play,
    required TResult Function() stop,
    required TResult Function(Duration position) seek,
  }) {
    return playFromChannel(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? playFromChannel,
    TResult? Function(int playIndex)? playFromQueue,
    TResult? Function()? pause,
    TResult? Function()? play,
    TResult? Function()? stop,
    TResult? Function(Duration position)? seek,
  }) {
    return playFromChannel?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? playFromChannel,
    TResult Function(int playIndex)? playFromQueue,
    TResult Function()? pause,
    TResult Function()? play,
    TResult Function()? stop,
    TResult Function(Duration position)? seek,
    required TResult orElse(),
  }) {
    if (playFromChannel != null) {
      return playFromChannel(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayFromChannel value) playFromChannel,
    required TResult Function(_PlayFromQueue value) playFromQueue,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Seek value) seek,
  }) {
    return playFromChannel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayFromChannel value)? playFromChannel,
    TResult? Function(_PlayFromQueue value)? playFromQueue,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Seek value)? seek,
  }) {
    return playFromChannel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayFromChannel value)? playFromChannel,
    TResult Function(_PlayFromQueue value)? playFromQueue,
    TResult Function(_Pause value)? pause,
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    TResult Function(_Seek value)? seek,
    required TResult orElse(),
  }) {
    if (playFromChannel != null) {
      return playFromChannel(this);
    }
    return orElse();
  }
}

abstract class _PlayFromChannel implements PlayerEvent {
  const factory _PlayFromChannel({required final VideoModel video}) =
      _$PlayFromChannelImpl;

  VideoModel get video;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayFromChannelImplCopyWith<_$PlayFromChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayFromQueueImplCopyWith<$Res> {
  factory _$$PlayFromQueueImplCopyWith(
          _$PlayFromQueueImpl value, $Res Function(_$PlayFromQueueImpl) then) =
      __$$PlayFromQueueImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int playIndex});
}

/// @nodoc
class __$$PlayFromQueueImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayFromQueueImpl>
    implements _$$PlayFromQueueImplCopyWith<$Res> {
  __$$PlayFromQueueImplCopyWithImpl(
      _$PlayFromQueueImpl _value, $Res Function(_$PlayFromQueueImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playIndex = null,
  }) {
    return _then(_$PlayFromQueueImpl(
      playIndex: null == playIndex
          ? _value.playIndex
          : playIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PlayFromQueueImpl implements _PlayFromQueue {
  const _$PlayFromQueueImpl({required this.playIndex});

  @override
  final int playIndex;

  @override
  String toString() {
    return 'PlayerEvent.playFromQueue(playIndex: $playIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayFromQueueImpl &&
            (identical(other.playIndex, playIndex) ||
                other.playIndex == playIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playIndex);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayFromQueueImplCopyWith<_$PlayFromQueueImpl> get copyWith =>
      __$$PlayFromQueueImplCopyWithImpl<_$PlayFromQueueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) playFromChannel,
    required TResult Function(int playIndex) playFromQueue,
    required TResult Function() pause,
    required TResult Function() play,
    required TResult Function() stop,
    required TResult Function(Duration position) seek,
  }) {
    return playFromQueue(playIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? playFromChannel,
    TResult? Function(int playIndex)? playFromQueue,
    TResult? Function()? pause,
    TResult? Function()? play,
    TResult? Function()? stop,
    TResult? Function(Duration position)? seek,
  }) {
    return playFromQueue?.call(playIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? playFromChannel,
    TResult Function(int playIndex)? playFromQueue,
    TResult Function()? pause,
    TResult Function()? play,
    TResult Function()? stop,
    TResult Function(Duration position)? seek,
    required TResult orElse(),
  }) {
    if (playFromQueue != null) {
      return playFromQueue(playIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayFromChannel value) playFromChannel,
    required TResult Function(_PlayFromQueue value) playFromQueue,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Seek value) seek,
  }) {
    return playFromQueue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayFromChannel value)? playFromChannel,
    TResult? Function(_PlayFromQueue value)? playFromQueue,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Seek value)? seek,
  }) {
    return playFromQueue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayFromChannel value)? playFromChannel,
    TResult Function(_PlayFromQueue value)? playFromQueue,
    TResult Function(_Pause value)? pause,
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    TResult Function(_Seek value)? seek,
    required TResult orElse(),
  }) {
    if (playFromQueue != null) {
      return playFromQueue(this);
    }
    return orElse();
  }
}

abstract class _PlayFromQueue implements PlayerEvent {
  const factory _PlayFromQueue({required final int playIndex}) =
      _$PlayFromQueueImpl;

  int get playIndex;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayFromQueueImplCopyWith<_$PlayFromQueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
          _$PauseImpl value, $Res Function(_$PauseImpl) then) =
      __$$PauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
      _$PauseImpl _value, $Res Function(_$PauseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseImpl implements _Pause {
  const _$PauseImpl();

  @override
  String toString() {
    return 'PlayerEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) playFromChannel,
    required TResult Function(int playIndex) playFromQueue,
    required TResult Function() pause,
    required TResult Function() play,
    required TResult Function() stop,
    required TResult Function(Duration position) seek,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? playFromChannel,
    TResult? Function(int playIndex)? playFromQueue,
    TResult? Function()? pause,
    TResult? Function()? play,
    TResult? Function()? stop,
    TResult? Function(Duration position)? seek,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? playFromChannel,
    TResult Function(int playIndex)? playFromQueue,
    TResult Function()? pause,
    TResult Function()? play,
    TResult Function()? stop,
    TResult Function(Duration position)? seek,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayFromChannel value) playFromChannel,
    required TResult Function(_PlayFromQueue value) playFromQueue,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Seek value) seek,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayFromChannel value)? playFromChannel,
    TResult? Function(_PlayFromQueue value)? playFromQueue,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Seek value)? seek,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayFromChannel value)? playFromChannel,
    TResult Function(_PlayFromQueue value)? playFromQueue,
    TResult Function(_Pause value)? pause,
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    TResult Function(_Seek value)? seek,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements PlayerEvent {
  const factory _Pause() = _$PauseImpl;
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayImpl implements _Play {
  const _$PlayImpl();

  @override
  String toString() {
    return 'PlayerEvent.play()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) playFromChannel,
    required TResult Function(int playIndex) playFromQueue,
    required TResult Function() pause,
    required TResult Function() play,
    required TResult Function() stop,
    required TResult Function(Duration position) seek,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? playFromChannel,
    TResult? Function(int playIndex)? playFromQueue,
    TResult? Function()? pause,
    TResult? Function()? play,
    TResult? Function()? stop,
    TResult? Function(Duration position)? seek,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? playFromChannel,
    TResult Function(int playIndex)? playFromQueue,
    TResult Function()? pause,
    TResult Function()? play,
    TResult Function()? stop,
    TResult Function(Duration position)? seek,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayFromChannel value) playFromChannel,
    required TResult Function(_PlayFromQueue value) playFromQueue,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Seek value) seek,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayFromChannel value)? playFromChannel,
    TResult? Function(_PlayFromQueue value)? playFromQueue,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Seek value)? seek,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayFromChannel value)? playFromChannel,
    TResult Function(_PlayFromQueue value)? playFromQueue,
    TResult Function(_Pause value)? pause,
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    TResult Function(_Seek value)? seek,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements PlayerEvent {
  const factory _Play() = _$PlayImpl;
}

/// @nodoc
abstract class _$$StopImplCopyWith<$Res> {
  factory _$$StopImplCopyWith(
          _$StopImpl value, $Res Function(_$StopImpl) then) =
      __$$StopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$StopImpl>
    implements _$$StopImplCopyWith<$Res> {
  __$$StopImplCopyWithImpl(_$StopImpl _value, $Res Function(_$StopImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopImpl implements _Stop {
  const _$StopImpl();

  @override
  String toString() {
    return 'PlayerEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) playFromChannel,
    required TResult Function(int playIndex) playFromQueue,
    required TResult Function() pause,
    required TResult Function() play,
    required TResult Function() stop,
    required TResult Function(Duration position) seek,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? playFromChannel,
    TResult? Function(int playIndex)? playFromQueue,
    TResult? Function()? pause,
    TResult? Function()? play,
    TResult? Function()? stop,
    TResult? Function(Duration position)? seek,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? playFromChannel,
    TResult Function(int playIndex)? playFromQueue,
    TResult Function()? pause,
    TResult Function()? play,
    TResult Function()? stop,
    TResult Function(Duration position)? seek,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayFromChannel value) playFromChannel,
    required TResult Function(_PlayFromQueue value) playFromQueue,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Seek value) seek,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayFromChannel value)? playFromChannel,
    TResult? Function(_PlayFromQueue value)? playFromQueue,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Seek value)? seek,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayFromChannel value)? playFromChannel,
    TResult Function(_PlayFromQueue value)? playFromQueue,
    TResult Function(_Pause value)? pause,
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    TResult Function(_Seek value)? seek,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _Stop implements PlayerEvent {
  const factory _Stop() = _$StopImpl;
}

/// @nodoc
abstract class _$$SeekImplCopyWith<$Res> {
  factory _$$SeekImplCopyWith(
          _$SeekImpl value, $Res Function(_$SeekImpl) then) =
      __$$SeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration position});
}

/// @nodoc
class __$$SeekImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SeekImpl>
    implements _$$SeekImplCopyWith<$Res> {
  __$$SeekImplCopyWithImpl(_$SeekImpl _value, $Res Function(_$SeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$SeekImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$SeekImpl implements _Seek {
  const _$SeekImpl({required this.position});

  @override
  final Duration position;

  @override
  String toString() {
    return 'PlayerEvent.seek(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      __$$SeekImplCopyWithImpl<_$SeekImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VideoModel video) playFromChannel,
    required TResult Function(int playIndex) playFromQueue,
    required TResult Function() pause,
    required TResult Function() play,
    required TResult Function() stop,
    required TResult Function(Duration position) seek,
  }) {
    return seek(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VideoModel video)? playFromChannel,
    TResult? Function(int playIndex)? playFromQueue,
    TResult? Function()? pause,
    TResult? Function()? play,
    TResult? Function()? stop,
    TResult? Function(Duration position)? seek,
  }) {
    return seek?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VideoModel video)? playFromChannel,
    TResult Function(int playIndex)? playFromQueue,
    TResult Function()? pause,
    TResult Function()? play,
    TResult Function()? stop,
    TResult Function(Duration position)? seek,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayFromChannel value) playFromChannel,
    required TResult Function(_PlayFromQueue value) playFromQueue,
    required TResult Function(_Pause value) pause,
    required TResult Function(_Play value) play,
    required TResult Function(_Stop value) stop,
    required TResult Function(_Seek value) seek,
  }) {
    return seek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayFromChannel value)? playFromChannel,
    TResult? Function(_PlayFromQueue value)? playFromQueue,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_Play value)? play,
    TResult? Function(_Stop value)? stop,
    TResult? Function(_Seek value)? seek,
  }) {
    return seek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayFromChannel value)? playFromChannel,
    TResult Function(_PlayFromQueue value)? playFromQueue,
    TResult Function(_Pause value)? pause,
    TResult Function(_Play value)? play,
    TResult Function(_Stop value)? stop,
    TResult Function(_Seek value)? seek,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(this);
    }
    return orElse();
  }
}

abstract class _Seek implements PlayerEvent {
  const factory _Seek({required final Duration position}) = _$SeekImpl;

  Duration get position;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoModel? video) loading,
    required TResult Function(AudioService audioService) playing,
    required TResult Function(AudioService audioService) paused,
    required TResult Function(AudioService audioService) stopped,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VideoModel? video)? loading,
    TResult? Function(AudioService audioService)? playing,
    TResult? Function(AudioService audioService)? paused,
    TResult? Function(AudioService audioService)? stopped,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoModel? video)? loading,
    TResult Function(AudioService audioService)? playing,
    TResult Function(AudioService audioService)? paused,
    TResult Function(AudioService audioService)? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitial value) initial,
    required TResult Function(_PlayerLoading value) loading,
    required TResult Function(_PlayerPlaying value) playing,
    required TResult Function(_PlayerPaused value) paused,
    required TResult Function(_PlayerStopped value) stopped,
    required TResult Function(_PlayerError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitial value)? initial,
    TResult? Function(_PlayerLoading value)? loading,
    TResult? Function(_PlayerPlaying value)? playing,
    TResult? Function(_PlayerPaused value)? paused,
    TResult? Function(_PlayerStopped value)? stopped,
    TResult? Function(_PlayerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitial value)? initial,
    TResult Function(_PlayerLoading value)? loading,
    TResult Function(_PlayerPlaying value)? playing,
    TResult Function(_PlayerPaused value)? paused,
    TResult Function(_PlayerStopped value)? stopped,
    TResult Function(_PlayerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlayerInitialImplCopyWith<$Res> {
  factory _$$PlayerInitialImplCopyWith(
          _$PlayerInitialImpl value, $Res Function(_$PlayerInitialImpl) then) =
      __$$PlayerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerInitialImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerInitialImpl>
    implements _$$PlayerInitialImplCopyWith<$Res> {
  __$$PlayerInitialImplCopyWithImpl(
      _$PlayerInitialImpl _value, $Res Function(_$PlayerInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayerInitialImpl implements _PlayerInitial {
  const _$PlayerInitialImpl();

  @override
  String toString() {
    return 'PlayerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoModel? video) loading,
    required TResult Function(AudioService audioService) playing,
    required TResult Function(AudioService audioService) paused,
    required TResult Function(AudioService audioService) stopped,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VideoModel? video)? loading,
    TResult? Function(AudioService audioService)? playing,
    TResult? Function(AudioService audioService)? paused,
    TResult? Function(AudioService audioService)? stopped,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoModel? video)? loading,
    TResult Function(AudioService audioService)? playing,
    TResult Function(AudioService audioService)? paused,
    TResult Function(AudioService audioService)? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitial value) initial,
    required TResult Function(_PlayerLoading value) loading,
    required TResult Function(_PlayerPlaying value) playing,
    required TResult Function(_PlayerPaused value) paused,
    required TResult Function(_PlayerStopped value) stopped,
    required TResult Function(_PlayerError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitial value)? initial,
    TResult? Function(_PlayerLoading value)? loading,
    TResult? Function(_PlayerPlaying value)? playing,
    TResult? Function(_PlayerPaused value)? paused,
    TResult? Function(_PlayerStopped value)? stopped,
    TResult? Function(_PlayerError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitial value)? initial,
    TResult Function(_PlayerLoading value)? loading,
    TResult Function(_PlayerPlaying value)? playing,
    TResult Function(_PlayerPaused value)? paused,
    TResult Function(_PlayerStopped value)? stopped,
    TResult Function(_PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PlayerInitial implements PlayerState {
  const factory _PlayerInitial() = _$PlayerInitialImpl;
}

/// @nodoc
abstract class _$$PlayerLoadingImplCopyWith<$Res> {
  factory _$$PlayerLoadingImplCopyWith(
          _$PlayerLoadingImpl value, $Res Function(_$PlayerLoadingImpl) then) =
      __$$PlayerLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoModel? video});

  $VideoModelCopyWith<$Res>? get video;
}

/// @nodoc
class __$$PlayerLoadingImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerLoadingImpl>
    implements _$$PlayerLoadingImplCopyWith<$Res> {
  __$$PlayerLoadingImplCopyWithImpl(
      _$PlayerLoadingImpl _value, $Res Function(_$PlayerLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = freezed,
  }) {
    return _then(_$PlayerLoadingImpl(
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoModel?,
    ));
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoModelCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $VideoModelCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc

class _$PlayerLoadingImpl implements _PlayerLoading {
  const _$PlayerLoadingImpl({this.video});

  @override
  final VideoModel? video;

  @override
  String toString() {
    return 'PlayerState.loading(video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerLoadingImpl &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerLoadingImplCopyWith<_$PlayerLoadingImpl> get copyWith =>
      __$$PlayerLoadingImplCopyWithImpl<_$PlayerLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoModel? video) loading,
    required TResult Function(AudioService audioService) playing,
    required TResult Function(AudioService audioService) paused,
    required TResult Function(AudioService audioService) stopped,
    required TResult Function() error,
  }) {
    return loading(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VideoModel? video)? loading,
    TResult? Function(AudioService audioService)? playing,
    TResult? Function(AudioService audioService)? paused,
    TResult? Function(AudioService audioService)? stopped,
    TResult? Function()? error,
  }) {
    return loading?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoModel? video)? loading,
    TResult Function(AudioService audioService)? playing,
    TResult Function(AudioService audioService)? paused,
    TResult Function(AudioService audioService)? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitial value) initial,
    required TResult Function(_PlayerLoading value) loading,
    required TResult Function(_PlayerPlaying value) playing,
    required TResult Function(_PlayerPaused value) paused,
    required TResult Function(_PlayerStopped value) stopped,
    required TResult Function(_PlayerError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitial value)? initial,
    TResult? Function(_PlayerLoading value)? loading,
    TResult? Function(_PlayerPlaying value)? playing,
    TResult? Function(_PlayerPaused value)? paused,
    TResult? Function(_PlayerStopped value)? stopped,
    TResult? Function(_PlayerError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitial value)? initial,
    TResult Function(_PlayerLoading value)? loading,
    TResult Function(_PlayerPlaying value)? playing,
    TResult Function(_PlayerPaused value)? paused,
    TResult Function(_PlayerStopped value)? stopped,
    TResult Function(_PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlayerLoading implements PlayerState {
  const factory _PlayerLoading({final VideoModel? video}) = _$PlayerLoadingImpl;

  VideoModel? get video;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerLoadingImplCopyWith<_$PlayerLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerPlayingImplCopyWith<$Res> {
  factory _$$PlayerPlayingImplCopyWith(
          _$PlayerPlayingImpl value, $Res Function(_$PlayerPlayingImpl) then) =
      __$$PlayerPlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AudioService audioService});
}

/// @nodoc
class __$$PlayerPlayingImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerPlayingImpl>
    implements _$$PlayerPlayingImplCopyWith<$Res> {
  __$$PlayerPlayingImplCopyWithImpl(
      _$PlayerPlayingImpl _value, $Res Function(_$PlayerPlayingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioService = null,
  }) {
    return _then(_$PlayerPlayingImpl(
      null == audioService
          ? _value.audioService
          : audioService // ignore: cast_nullable_to_non_nullable
              as AudioService,
    ));
  }
}

/// @nodoc

class _$PlayerPlayingImpl implements _PlayerPlaying {
  const _$PlayerPlayingImpl(this.audioService);

  @override
  final AudioService audioService;

  @override
  String toString() {
    return 'PlayerState.playing(audioService: $audioService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerPlayingImpl &&
            (identical(other.audioService, audioService) ||
                other.audioService == audioService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioService);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerPlayingImplCopyWith<_$PlayerPlayingImpl> get copyWith =>
      __$$PlayerPlayingImplCopyWithImpl<_$PlayerPlayingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoModel? video) loading,
    required TResult Function(AudioService audioService) playing,
    required TResult Function(AudioService audioService) paused,
    required TResult Function(AudioService audioService) stopped,
    required TResult Function() error,
  }) {
    return playing(audioService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VideoModel? video)? loading,
    TResult? Function(AudioService audioService)? playing,
    TResult? Function(AudioService audioService)? paused,
    TResult? Function(AudioService audioService)? stopped,
    TResult? Function()? error,
  }) {
    return playing?.call(audioService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoModel? video)? loading,
    TResult Function(AudioService audioService)? playing,
    TResult Function(AudioService audioService)? paused,
    TResult Function(AudioService audioService)? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(audioService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitial value) initial,
    required TResult Function(_PlayerLoading value) loading,
    required TResult Function(_PlayerPlaying value) playing,
    required TResult Function(_PlayerPaused value) paused,
    required TResult Function(_PlayerStopped value) stopped,
    required TResult Function(_PlayerError value) error,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitial value)? initial,
    TResult? Function(_PlayerLoading value)? loading,
    TResult? Function(_PlayerPlaying value)? playing,
    TResult? Function(_PlayerPaused value)? paused,
    TResult? Function(_PlayerStopped value)? stopped,
    TResult? Function(_PlayerError value)? error,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitial value)? initial,
    TResult Function(_PlayerLoading value)? loading,
    TResult Function(_PlayerPlaying value)? playing,
    TResult Function(_PlayerPaused value)? paused,
    TResult Function(_PlayerStopped value)? stopped,
    TResult Function(_PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _PlayerPlaying implements PlayerState {
  const factory _PlayerPlaying(final AudioService audioService) =
      _$PlayerPlayingImpl;

  AudioService get audioService;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerPlayingImplCopyWith<_$PlayerPlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerPausedImplCopyWith<$Res> {
  factory _$$PlayerPausedImplCopyWith(
          _$PlayerPausedImpl value, $Res Function(_$PlayerPausedImpl) then) =
      __$$PlayerPausedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AudioService audioService});
}

/// @nodoc
class __$$PlayerPausedImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerPausedImpl>
    implements _$$PlayerPausedImplCopyWith<$Res> {
  __$$PlayerPausedImplCopyWithImpl(
      _$PlayerPausedImpl _value, $Res Function(_$PlayerPausedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioService = null,
  }) {
    return _then(_$PlayerPausedImpl(
      null == audioService
          ? _value.audioService
          : audioService // ignore: cast_nullable_to_non_nullable
              as AudioService,
    ));
  }
}

/// @nodoc

class _$PlayerPausedImpl implements _PlayerPaused {
  const _$PlayerPausedImpl(this.audioService);

  @override
  final AudioService audioService;

  @override
  String toString() {
    return 'PlayerState.paused(audioService: $audioService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerPausedImpl &&
            (identical(other.audioService, audioService) ||
                other.audioService == audioService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioService);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerPausedImplCopyWith<_$PlayerPausedImpl> get copyWith =>
      __$$PlayerPausedImplCopyWithImpl<_$PlayerPausedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoModel? video) loading,
    required TResult Function(AudioService audioService) playing,
    required TResult Function(AudioService audioService) paused,
    required TResult Function(AudioService audioService) stopped,
    required TResult Function() error,
  }) {
    return paused(audioService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VideoModel? video)? loading,
    TResult? Function(AudioService audioService)? playing,
    TResult? Function(AudioService audioService)? paused,
    TResult? Function(AudioService audioService)? stopped,
    TResult? Function()? error,
  }) {
    return paused?.call(audioService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoModel? video)? loading,
    TResult Function(AudioService audioService)? playing,
    TResult Function(AudioService audioService)? paused,
    TResult Function(AudioService audioService)? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(audioService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitial value) initial,
    required TResult Function(_PlayerLoading value) loading,
    required TResult Function(_PlayerPlaying value) playing,
    required TResult Function(_PlayerPaused value) paused,
    required TResult Function(_PlayerStopped value) stopped,
    required TResult Function(_PlayerError value) error,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitial value)? initial,
    TResult? Function(_PlayerLoading value)? loading,
    TResult? Function(_PlayerPlaying value)? playing,
    TResult? Function(_PlayerPaused value)? paused,
    TResult? Function(_PlayerStopped value)? stopped,
    TResult? Function(_PlayerError value)? error,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitial value)? initial,
    TResult Function(_PlayerLoading value)? loading,
    TResult Function(_PlayerPlaying value)? playing,
    TResult Function(_PlayerPaused value)? paused,
    TResult Function(_PlayerStopped value)? stopped,
    TResult Function(_PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _PlayerPaused implements PlayerState {
  const factory _PlayerPaused(final AudioService audioService) =
      _$PlayerPausedImpl;

  AudioService get audioService;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerPausedImplCopyWith<_$PlayerPausedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerStoppedImplCopyWith<$Res> {
  factory _$$PlayerStoppedImplCopyWith(
          _$PlayerStoppedImpl value, $Res Function(_$PlayerStoppedImpl) then) =
      __$$PlayerStoppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AudioService audioService});
}

/// @nodoc
class __$$PlayerStoppedImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStoppedImpl>
    implements _$$PlayerStoppedImplCopyWith<$Res> {
  __$$PlayerStoppedImplCopyWithImpl(
      _$PlayerStoppedImpl _value, $Res Function(_$PlayerStoppedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioService = null,
  }) {
    return _then(_$PlayerStoppedImpl(
      null == audioService
          ? _value.audioService
          : audioService // ignore: cast_nullable_to_non_nullable
              as AudioService,
    ));
  }
}

/// @nodoc

class _$PlayerStoppedImpl implements _PlayerStopped {
  const _$PlayerStoppedImpl(this.audioService);

  @override
  final AudioService audioService;

  @override
  String toString() {
    return 'PlayerState.stopped(audioService: $audioService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStoppedImpl &&
            (identical(other.audioService, audioService) ||
                other.audioService == audioService));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioService);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStoppedImplCopyWith<_$PlayerStoppedImpl> get copyWith =>
      __$$PlayerStoppedImplCopyWithImpl<_$PlayerStoppedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoModel? video) loading,
    required TResult Function(AudioService audioService) playing,
    required TResult Function(AudioService audioService) paused,
    required TResult Function(AudioService audioService) stopped,
    required TResult Function() error,
  }) {
    return stopped(audioService);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VideoModel? video)? loading,
    TResult? Function(AudioService audioService)? playing,
    TResult? Function(AudioService audioService)? paused,
    TResult? Function(AudioService audioService)? stopped,
    TResult? Function()? error,
  }) {
    return stopped?.call(audioService);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoModel? video)? loading,
    TResult Function(AudioService audioService)? playing,
    TResult Function(AudioService audioService)? paused,
    TResult Function(AudioService audioService)? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(audioService);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitial value) initial,
    required TResult Function(_PlayerLoading value) loading,
    required TResult Function(_PlayerPlaying value) playing,
    required TResult Function(_PlayerPaused value) paused,
    required TResult Function(_PlayerStopped value) stopped,
    required TResult Function(_PlayerError value) error,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitial value)? initial,
    TResult? Function(_PlayerLoading value)? loading,
    TResult? Function(_PlayerPlaying value)? playing,
    TResult? Function(_PlayerPaused value)? paused,
    TResult? Function(_PlayerStopped value)? stopped,
    TResult? Function(_PlayerError value)? error,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitial value)? initial,
    TResult Function(_PlayerLoading value)? loading,
    TResult Function(_PlayerPlaying value)? playing,
    TResult Function(_PlayerPaused value)? paused,
    TResult Function(_PlayerStopped value)? stopped,
    TResult Function(_PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _PlayerStopped implements PlayerState {
  const factory _PlayerStopped(final AudioService audioService) =
      _$PlayerStoppedImpl;

  AudioService get audioService;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStoppedImplCopyWith<_$PlayerStoppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerErrorImplCopyWith<$Res> {
  factory _$$PlayerErrorImplCopyWith(
          _$PlayerErrorImpl value, $Res Function(_$PlayerErrorImpl) then) =
      __$$PlayerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerErrorImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerErrorImpl>
    implements _$$PlayerErrorImplCopyWith<$Res> {
  __$$PlayerErrorImplCopyWithImpl(
      _$PlayerErrorImpl _value, $Res Function(_$PlayerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayerErrorImpl implements _PlayerError {
  const _$PlayerErrorImpl();

  @override
  String toString() {
    return 'PlayerState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VideoModel? video) loading,
    required TResult Function(AudioService audioService) playing,
    required TResult Function(AudioService audioService) paused,
    required TResult Function(AudioService audioService) stopped,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VideoModel? video)? loading,
    TResult? Function(AudioService audioService)? playing,
    TResult? Function(AudioService audioService)? paused,
    TResult? Function(AudioService audioService)? stopped,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VideoModel? video)? loading,
    TResult Function(AudioService audioService)? playing,
    TResult Function(AudioService audioService)? paused,
    TResult Function(AudioService audioService)? stopped,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitial value) initial,
    required TResult Function(_PlayerLoading value) loading,
    required TResult Function(_PlayerPlaying value) playing,
    required TResult Function(_PlayerPaused value) paused,
    required TResult Function(_PlayerStopped value) stopped,
    required TResult Function(_PlayerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitial value)? initial,
    TResult? Function(_PlayerLoading value)? loading,
    TResult? Function(_PlayerPlaying value)? playing,
    TResult? Function(_PlayerPaused value)? paused,
    TResult? Function(_PlayerStopped value)? stopped,
    TResult? Function(_PlayerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitial value)? initial,
    TResult Function(_PlayerLoading value)? loading,
    TResult Function(_PlayerPlaying value)? playing,
    TResult Function(_PlayerPaused value)? paused,
    TResult Function(_PlayerStopped value)? stopped,
    TResult Function(_PlayerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PlayerError implements PlayerState {
  const factory _PlayerError() = _$PlayerErrorImpl;
}
