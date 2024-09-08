part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.playFromChannel({required VideoModel video}) = _PlayFromChannel;
  const factory PlayerEvent.playFromQueue({required int playIndex}) = _PlayFromQueue;
  const factory PlayerEvent.pause() = _Pause;
  const factory PlayerEvent.play() = _Play;
  const factory PlayerEvent.stop() = _Stop;
  const factory PlayerEvent.seek({required Duration position}) = _Seek;
}
