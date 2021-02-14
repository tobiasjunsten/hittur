part of 'game_bloc.dart';

abstract class GameState extends Equatable {
  final List<GameCard> gameCards;
  final List<String> foundCards;
  const GameState(this.gameCards, this.foundCards);

  @override
  List<Object> get props => [];

  int totalPoints();
}

class GameInitial extends GameState {
  GameInitial() : super([], []);

  @override
  int totalPoints() => 0;
}

class GameStarted extends GameState {
  GameStarted(
    List<GameCard> cards,
    List<String> foundCards,
  ) : super(cards, foundCards);

  @override
  List<Object> get props => [gameCards, foundCards];

  @override
  int totalPoints() {
    return gameCards.fold(
        0,
        (prev, card) =>
            foundCards.contains(card.id) ? prev + card.points : prev);
  }
}
