part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeInitial;
  const factory HomeState.loading() = _HomeVideosLoading;
  const factory HomeState.videosLoaded(List<VideoModel>? videos) = _HomeVideosLoaded;
  const factory HomeState.error() = _HomeError;
}
