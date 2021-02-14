import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hittur/model/all.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial());

  @override
  Stream<GameState> mapEventToState(
    GameEvent event,
  ) async* {
    if (event is StartGame) {
      yield GameStarted(event.cards, []);
    } else if (event is CardFound) {
      yield GameStarted(
          state.gameCards, [...state.foundCards, event.foundCardId]);
    } else if (event is RegretCardFound) {
      final foundCards = List<String>.from(state.foundCards)
        ..remove(event.cardId);
      yield GameStarted(state.gameCards, foundCards);
    }
  }
}
