import 'dart:developer';

import 'package:audio_session/audio_session.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';

import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';

part 'player_event.dart';
part 'player_state.dart';
part "player_bloc.freezed.dart";

final AudioService _audioService = getIt<AudioService>();

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerState.initial()) {
    setAudioSessionAndListen();

    on<PlayerEvent>((event, emit) async {
      await event.map(
        playFromChannel: (event) => _playFromChannel(event, emit),
        playFromQueue: (event) => _playFromQueue(event, emit),
        pause: (event) => _pause(event, emit),
        play: (event) => _play(event, emit),
        stop: (event) => _stop(event, emit),
        seek: (event) => _seek(event, emit),
      );
    });
  }

  late final AudioSession _audioSession;

  Future<void> setAudioSessionAndListen() async {
    _audioSession = await AudioSession.instance;

    _audioSession.interruptionEventStream.listen((event) {
      log("audioSession interruption event @player bloc => event.begin: ${event.begin}; event.type: ${event.type}");
      if (event.begin) {
        switch (event.type) {
          case AudioInterruptionType.pause:
            add(const PlayerEvent.pause());
          case AudioInterruptionType.duck:
            add(const PlayerEvent.pause());
          case AudioInterruptionType.unknown:
            add(const PlayerEvent.pause());
        }
      } else {
        switch (event.type) {
          case AudioInterruptionType.pause:
            add(const PlayerEvent.play());
          case AudioInterruptionType.duck:
            add(const PlayerEvent.play());
          case AudioInterruptionType.unknown:
            add(const PlayerEvent.play());
        }
      }
    });
  }

  Future<void> _playFromChannel(_PlayFromChannel event, Emitter<PlayerState> emit) async {
    emit(PlayerState.loading(video: event.video));
    await _audioService.playAudio(video: event.video);
    // create new queue from channel
    emit(PlayerState.playing(_audioService));
  }

  Future<void> _playFromQueue(_PlayFromQueue event, Emitter<PlayerState> emit) async {
    emit(PlayerState.loading(video: _audioService.videoPlaylist[event.playIndex]));
    await _audioService.playAudioFromQueue(playIndex: event.playIndex);
    emit(PlayerState.playing(_audioService));
  }

  Future<void> _pause(_Pause event, Emitter<PlayerState> emit) async {
    if (_audioService.isPlaying) {
      _audioService.player.pause();
      emit(PlayerState.paused(_audioService));
    }
  }

  Future<void> _play(_Play event, Emitter<PlayerState> emit) async {
    if (!_audioService.isPlaying) {
      _audioService.player.play();
      emit(PlayerState.playing(_audioService));
    }
  }

  Future<void> _stop(_Stop event, Emitter<PlayerState> emit) async {
    await _audioService.player.stop();
    emit(PlayerState.stopped(_audioService));
  }

  Future<void> _seek(_Seek event, Emitter<PlayerState> emit) async {
    // emit(PlayerState.loading(video: audioService.currentlyPlaying));
    _audioService.player.seek(event.position);
    emit(PlayerState.playing(_audioService));
  }
}
