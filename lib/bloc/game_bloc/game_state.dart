part of 'game_bloc.dart';

abstract class GameState extends Equatable {
  final List<GameCard> gameCards;
  final List<String> foundCards;
  const GameState(this.gameCards, this.foundCards);

  @override
  List<Object> get props => [];
}

class GameInitial extends GameState {
  GameInitial() : super([], []);
}

class GameStarted extends GameState {
  GameStarted(
    List<GameCard> cards,
    List<String> foundCards,
  ) : super(cards, foundCards);

  @override
  List<Object> get props => [gameCards, foundCards];
}
