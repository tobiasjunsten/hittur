part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object> get props => [];
}

class StartGame extends GameEvent {
  final List<GameCard> cards;

  StartGame(this.cards);
}

class CardFound extends GameEvent {
  final String foundCardId;

  CardFound(this.foundCardId);
}
