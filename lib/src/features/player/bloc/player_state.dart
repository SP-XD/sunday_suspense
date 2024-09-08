part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.initial() = _PlayerInitial;
  const factory PlayerState.loading({VideoModel? video}) = _PlayerLoading;
  const factory PlayerState.playing(AudioService audioService) = _PlayerPlaying;
  const factory PlayerState.paused(AudioService audioService) = _PlayerPaused;
  const factory PlayerState.stopped(AudioService audioService) = _PlayerStopped;
  const factory PlayerState.error() = _PlayerError;
}
