import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hittur/bloc/all.dart';
import 'package:hittur/colors.dart';
import 'package:hittur/components/app_bar.dart';
import 'package:hittur/theme.dart';

class GamePage extends StatelessWidget {
  GamePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 1000000);
    return BlocBuilder<GameBloc, GameState>(builder: (context, state) {
      final cards = state.gameCards;
      return Scaffold(
        appBar: HitturAppBar(),
        body: PageView.builder(
          controller: controller,
          itemBuilder: (BuildContext context, int index) {
            final card = cards[index % cards.length];
            final found = state.foundCards.contains(card.id);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  color: found ? HitturColors.green : HitturColors.yellow[20],
                  borderRadius: borderRadius,
                  border: Border.all(color: HitturColors.black),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          '${card.name}',
                          style: hitturTextTheme.headline2,
                        ),
                      ),
                      Center(
                        child: Text(
                          '${card.points}',
                          style: hitturTextTheme.headline3,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.pink,
                          child: found ? Text("Ångra Hittur") : Text('Hittur'),
                          onPressed: () {
                            found
                                ? BlocProvider.of<GameBloc>(context)
                                    .add(RegretCardFound(card.id))
                                : BlocProvider.of<GameBloc>(context)
                                    .add(CardFound(card.id));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 64,
            child: Padding(
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Avsluta'),
                  )
                ],
              ),
              padding: const EdgeInsets.all(20.0),
            ),
          ),
        ),
      );
    });
  }
}
