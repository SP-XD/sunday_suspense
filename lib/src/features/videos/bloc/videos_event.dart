part of 'videos_bloc.dart';

@freezed
class VideosEvent with _$VideosEvent {
  const factory VideosEvent.loadVideos({
    required String categoryId,
    required CategoryType categoryType,
  }) = _LoadVideos;
}
