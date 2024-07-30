part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.playFromChannel({required Video video}) = _PlayFromChannel;
  const factory PlayerEvent.playFromQueue({required int playIndex}) = _PlayFromQueue;
  const factory PlayerEvent.pausePlayToggle() = _PausePlayToggle;
  const factory PlayerEvent.stop() = _Stop;
  const factory PlayerEvent.seek({required Duration position}) = _Seek;
}
