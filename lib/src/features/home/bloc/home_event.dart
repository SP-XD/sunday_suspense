part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeScreenLoadedEvent extends HomeEvent {}

class HomeScreenPlayAudioEvent extends HomeEvent {
  HomeScreenPlayAudioEvent(this.video);

  final Video video;
}
