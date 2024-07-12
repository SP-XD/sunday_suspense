import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:midnight_suspense/data/repositories/videos_repository.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._videosRepository) : super(HomeInitial()) {
    on<HomeScreenLoadedEvent>((event, emit) async {
      emit(HomeVideosLoading());
      try {
        var response = await _videosRepository.getHomeVideos("@MirchiBangla");
        emit(HomeVideosLoaded(videos: response));
      } catch (e) {
        log(e.toString());
        emit(HomeVideosLoadingFailed());
      }
    });
  }

  final VideosRepository _videosRepository;
}
