import 'dart:developer';

import 'package:audio_service/audio_service.dart' as aps;
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

  late AudioSession _audioSession;

  Future<void> setAudioSessionAndListen() async {
    _audioSession = _audioService.audioSession;

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
          // don't do anything
        }
      }
    });

    /// react to changes in state from the notification
    _audioService.playbackState.listen((aps.PlaybackState pState) {
      if (_getCurrentState == PlayerState.initial()) return;
      log("@PlayerBloc playbackState: $pState playing: ${_getCurrentState}");
      if (_getCurrentState.maybeMap(orElse: () => false, paused: (_) => true) && pState.playing)
        add(const PlayerEvent.play());
      else if (_getCurrentState.maybeMap(orElse: () => false, playing: (_) => true) && !pState.playing)
        add(const PlayerEvent.pause());
    });
  }

  PlayerState get _getCurrentState => this.state;

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
    _audioService.pause();
    emit(PlayerState.paused(_audioService));
  }

  Future<void> _play(_Play event, Emitter<PlayerState> emit) async {
    _audioService.play();
    emit(PlayerState.playing(_audioService));
  }

  Future<void> _stop(_Stop event, Emitter<PlayerState> emit) async {
    await _audioService.stop();
    emit(PlayerState.stopped());
  }

  Future<void> _seek(_Seek event, Emitter<PlayerState> emit) async {
    // emit(PlayerState.loading(video: audioService.currentlyPlaying));
    _audioService.seek(event.position);
    emit(PlayerState.playing(_audioService));
  }
}
