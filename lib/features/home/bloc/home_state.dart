part of 'home_bloc.dart';

@immutable
sealed class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

final class HomeVideosLoading extends HomeState {
  @override
  List<Object> get props => [];
}

final class HomeVideosLoaded extends HomeState {
  final List<Video>? videos;

  HomeVideosLoaded({this.videos});

  @override
  List<Object> get props => [videos ?? []];
}

final class HomeVideosLoadingFailed extends HomeState {
  @override
  List<Object> get props => [];
}
