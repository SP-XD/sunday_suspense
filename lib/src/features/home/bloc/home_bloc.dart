import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._videosRepository) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        homeScreenLoaded: (event) => _homeScreenLoaded(emit),
      );
    });
  }

  final VideosRepository _videosRepository;

  Future<void> _homeScreenLoaded(Emitter<HomeState> emit) async {
    emit(HomeState.loading());
    try {
      var response = await _videosRepository.getPlaylistVideos("PLq71IJk8mCV5H0X__3DXxROWn11hXN8Zk");
      emit(HomeState.videosLoaded(response));
    } catch (e) {
      log(e.toString());
      emit(HomeState.error());
    }
  }
}
// emit(HomeVideosLoading());
//       try {
//         // var response = await _videosRepository.getHomeVideos("@MirchiBangla");
//         var response = await _videosRepository.getPlaylistVideos("PLq71IJk8mCV5H0X__3DXxROWn11hXN8Zk");
//         log("response length: ${response.length}");
//         emit(HomeVideosLoaded(videos: response));
//       } catch (e) {
//         log(e.toString());
//         emit(HomeVideosLoadingFailed());
//       }