part of 'player_bloc.dart';

sealed class PlayerState extends Equatable {
  const PlayerState();
  
  @override
  List<Object> get props => [];
}

final class PlayerInitial extends PlayerState {}
