part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();

  @override
  List<Object> get props => [];
}

class StartGame extends GameEvent {
  final List<GameCard> cards;

  const StartGame(this.cards);
}

class CardFound extends GameEvent {
  final String foundCardId;

  const CardFound(this.foundCardId);
}

class RegretCardFound extends GameEvent {
  final String cardId;

  const RegretCardFound(this.cardId);
}