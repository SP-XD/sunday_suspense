import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/models/category_model.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/src/services/isolate_service.dart';

part 'videos_event.dart';
part 'videos_state.dart';
part 'videos_bloc.freezed.dart';

class VideosBloc extends Bloc<VideosEvent, VideosState> {
  VideosBloc(this.id, this._videosRepository) : super(VideosState.initial()) {
    on<VideosEvent>((event, emit) async {
      await event.map(loadVideos: (event) async {
        emit(VideosState.loading());
        try {
          List<VideoModel> videos;
          switch (event.categoryType) {
            case CategoryType.channel:
              videos = await _videosRepository.getChannelVideos(event.categoryId);
            case CategoryType.playlist:
              videos = await _videosRepository.getPlaylistVideos(event.categoryId);
            // TODO: implement history category type
            case CategoryType.history:
              videos = [];
            case CategoryType.liked:
              videos = [];
          }

          logger.i("event category type: ${event.categoryType}, videos: ${videos.length}");

          emit(VideosState.loaded(videos));
        } catch (e, st) {
          logger.e(e, stackTrace: st);
          emit(VideosState.error(e.toString()));
        }
      });
    });
  }

  final VideosRepository _videosRepository;
  final String id;
}
