part of 'videos_bloc.dart';

@unfreezed
class VideosState with _$VideosState {
  const factory VideosState.initial() = _Initial;
  const factory VideosState.loading() = _Loading;
  factory VideosState.loaded(List<VideoModel> videos) = _Loaded;
  factory VideosState.error(String message) = _Error;
}
