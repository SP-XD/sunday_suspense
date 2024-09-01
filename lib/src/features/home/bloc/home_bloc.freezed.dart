// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeScreenLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeScreenLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeScreenLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenLoadedEvent value) homeScreenLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenLoadedEvent value)? homeScreenLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenLoadedEvent value)? homeScreenLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeScreenLoadedEventImplCopyWith<$Res> {
  factory _$$HomeScreenLoadedEventImplCopyWith(
          _$HomeScreenLoadedEventImpl value,
          $Res Function(_$HomeScreenLoadedEventImpl) then) =
      __$$HomeScreenLoadedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeScreenLoadedEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeScreenLoadedEventImpl>
    implements _$$HomeScreenLoadedEventImplCopyWith<$Res> {
  __$$HomeScreenLoadedEventImplCopyWithImpl(_$HomeScreenLoadedEventImpl _value,
      $Res Function(_$HomeScreenLoadedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeScreenLoadedEventImpl implements HomeScreenLoadedEvent {
  const _$HomeScreenLoadedEventImpl();

  @override
  String toString() {
    return 'HomeEvent.homeScreenLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeScreenLoadedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeScreenLoaded,
  }) {
    return homeScreenLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeScreenLoaded,
  }) {
    return homeScreenLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeScreenLoaded,
    required TResult orElse(),
  }) {
    if (homeScreenLoaded != null) {
      return homeScreenLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeScreenLoadedEvent value) homeScreenLoaded,
  }) {
    return homeScreenLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeScreenLoadedEvent value)? homeScreenLoaded,
  }) {
    return homeScreenLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeScreenLoadedEvent value)? homeScreenLoaded,
    required TResult orElse(),
  }) {
    if (homeScreenLoaded != null) {
      return homeScreenLoaded(this);
    }
    return orElse();
  }
}

abstract class HomeScreenLoadedEvent implements HomeEvent {
  const factory HomeScreenLoadedEvent() = _$HomeScreenLoadedEventImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video>? videos) videosLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video>? videos)? videosLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video>? videos)? videosLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeVideosLoading value) loading,
    required TResult Function(_HomeVideosLoaded value) videosLoaded,
    required TResult Function(_HomeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeVideosLoading value)? loading,
    TResult? Function(_HomeVideosLoaded value)? videosLoaded,
    TResult? Function(_HomeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeVideosLoading value)? loading,
    TResult Function(_HomeVideosLoaded value)? videosLoaded,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<$Res> {
  factory _$$HomeInitialImplCopyWith(
          _$HomeInitialImpl value, $Res Function(_$HomeInitialImpl) then) =
      __$$HomeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitialImpl>
    implements _$$HomeInitialImplCopyWith<$Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl _value, $Res Function(_$HomeInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeInitialImpl implements _HomeInitial {
  const _$HomeInitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video>? videos) videosLoaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video>? videos)? videosLoaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video>? videos)? videosLoaded,
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
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeVideosLoading value) loading,
    required TResult Function(_HomeVideosLoaded value) videosLoaded,
    required TResult Function(_HomeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeVideosLoading value)? loading,
    TResult? Function(_HomeVideosLoaded value)? videosLoaded,
    TResult? Function(_HomeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeVideosLoading value)? loading,
    TResult Function(_HomeVideosLoaded value)? videosLoaded,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitial implements HomeState {
  const factory _HomeInitial() = _$HomeInitialImpl;
}

/// @nodoc
abstract class _$$HomeVideosLoadingImplCopyWith<$Res> {
  factory _$$HomeVideosLoadingImplCopyWith(_$HomeVideosLoadingImpl value,
          $Res Function(_$HomeVideosLoadingImpl) then) =
      __$$HomeVideosLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeVideosLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeVideosLoadingImpl>
    implements _$$HomeVideosLoadingImplCopyWith<$Res> {
  __$$HomeVideosLoadingImplCopyWithImpl(_$HomeVideosLoadingImpl _value,
      $Res Function(_$HomeVideosLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeVideosLoadingImpl implements _HomeVideosLoading {
  const _$HomeVideosLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeVideosLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video>? videos) videosLoaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video>? videos)? videosLoaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video>? videos)? videosLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeVideosLoading value) loading,
    required TResult Function(_HomeVideosLoaded value) videosLoaded,
    required TResult Function(_HomeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeVideosLoading value)? loading,
    TResult? Function(_HomeVideosLoaded value)? videosLoaded,
    TResult? Function(_HomeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeVideosLoading value)? loading,
    TResult Function(_HomeVideosLoaded value)? videosLoaded,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeVideosLoading implements HomeState {
  const factory _HomeVideosLoading() = _$HomeVideosLoadingImpl;
}

/// @nodoc
abstract class _$$HomeVideosLoadedImplCopyWith<$Res> {
  factory _$$HomeVideosLoadedImplCopyWith(_$HomeVideosLoadedImpl value,
          $Res Function(_$HomeVideosLoadedImpl) then) =
      __$$HomeVideosLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Video>? videos});
}

/// @nodoc
class __$$HomeVideosLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeVideosLoadedImpl>
    implements _$$HomeVideosLoadedImplCopyWith<$Res> {
  __$$HomeVideosLoadedImplCopyWithImpl(_$HomeVideosLoadedImpl _value,
      $Res Function(_$HomeVideosLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_$HomeVideosLoadedImpl(
      freezed == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>?,
    ));
  }
}

/// @nodoc

class _$HomeVideosLoadedImpl implements _HomeVideosLoaded {
  const _$HomeVideosLoadedImpl(final List<Video>? videos) : _videos = videos;

  final List<Video>? _videos;
  @override
  List<Video>? get videos {
    final value = _videos;
    if (value == null) return null;
    if (_videos is EqualUnmodifiableListView) return _videos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.videosLoaded(videos: $videos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeVideosLoadedImpl &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeVideosLoadedImplCopyWith<_$HomeVideosLoadedImpl> get copyWith =>
      __$$HomeVideosLoadedImplCopyWithImpl<_$HomeVideosLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video>? videos) videosLoaded,
    required TResult Function() error,
  }) {
    return videosLoaded(videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video>? videos)? videosLoaded,
    TResult? Function()? error,
  }) {
    return videosLoaded?.call(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video>? videos)? videosLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (videosLoaded != null) {
      return videosLoaded(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeVideosLoading value) loading,
    required TResult Function(_HomeVideosLoaded value) videosLoaded,
    required TResult Function(_HomeError value) error,
  }) {
    return videosLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeVideosLoading value)? loading,
    TResult? Function(_HomeVideosLoaded value)? videosLoaded,
    TResult? Function(_HomeError value)? error,
  }) {
    return videosLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeVideosLoading value)? loading,
    TResult Function(_HomeVideosLoaded value)? videosLoaded,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (videosLoaded != null) {
      return videosLoaded(this);
    }
    return orElse();
  }
}

abstract class _HomeVideosLoaded implements HomeState {
  const factory _HomeVideosLoaded(final List<Video>? videos) =
      _$HomeVideosLoadedImpl;

  List<Video>? get videos;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeVideosLoadedImplCopyWith<_$HomeVideosLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeErrorImpl implements _HomeError {
  const _$HomeErrorImpl();

  @override
  String toString() {
    return 'HomeState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Video>? videos) videosLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Video>? videos)? videosLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Video>? videos)? videosLoaded,
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
    required TResult Function(_HomeInitial value) initial,
    required TResult Function(_HomeVideosLoading value) loading,
    required TResult Function(_HomeVideosLoaded value) videosLoaded,
    required TResult Function(_HomeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeInitial value)? initial,
    TResult? Function(_HomeVideosLoading value)? loading,
    TResult? Function(_HomeVideosLoaded value)? videosLoaded,
    TResult? Function(_HomeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitial value)? initial,
    TResult Function(_HomeVideosLoading value)? loading,
    TResult Function(_HomeVideosLoaded value)? videosLoaded,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeError implements HomeState {
  const factory _HomeError() = _$HomeErrorImpl;
}
