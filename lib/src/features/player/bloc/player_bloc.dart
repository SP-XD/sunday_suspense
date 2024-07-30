import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';

part 'player_event.dart';
part 'player_state.dart';
part "player_bloc.freezed.dart";

final AudioService audioService = getIt<AudioService>();

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    on<PlayerEvent>((event, emit) async {
      await event.map(
        playFromChannel: (event) => _playFromChannel(event, emit),
        playFromQueue: (event) => _playFromQueue(event, emit),
        pausePlayToggle: (event) => _pausePlayToggle(event, emit),
        stop: (event) => _stop(event, emit),
        seek: (event) => _seek(event, emit),
      );
    });
  }

  Future<void> _playFromChannel(_PlayFromChannel event, Emitter<PlayerState> emit) async {
    emit(PlayerState.loading());
    await audioService.playAudio(video: event.video);
    // create new queue from channel
    emit(PlayerState.playing(audioService));
  }

  Future<void> _playFromQueue(_PlayFromQueue event, Emitter<PlayerState> emit) async {
    emit(PlayerState.loading());
    await audioService.playAudioFromQueue(playIndex: event.playIndex);
    emit(PlayerState.playing(audioService));
  }

  Future<void> _pausePlayToggle(_PausePlayToggle event, Emitter<PlayerState> emit) async {
    if (audioService.isPlaying) {
      await audioService.player.pause();
      emit(PlayerState.paused(audioService));
    } else {
      await audioService.player.play();
      emit(PlayerState.playing(audioService));
    }
  }

  Future<void> _stop(_Stop event, Emitter<PlayerState> emit) async {
    await audioService.player.stop();
    emit(PlayerState.stopped(audioService));
  }

  Future<void> _seek(_Seek event, Emitter<PlayerState> emit) async {
    emit(PlayerState.loading());
    await audioService.player.seek(event.position);
    emit(PlayerState.playing(audioService));
  }
}
