import 'package:flutter/material.dart';
import 'package:hittur/colors.dart';
import 'package:hittur/model/card.dart';
import 'package:hittur/theme.dart';

class GamePage extends StatelessWidget {
  GamePage({Key key}) : super(key: key);
  final cards = [
    GameCard(id: 1, name: 'Bil', points: 5),
    GameCard(id: 2, name: 'Cykel', points: 5),
    GameCard(id: 3, name: 'Traktor', points: 20),
    GameCard(id: 4, name: 'Hund', points: 25),
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 1000000);
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
        controller: controller,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: HitturColors.yellow[20],
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
                        '${cards[index % cards.length].name}',
                        style: hitturTextTheme.headline1,
                      ),
                    ),
                    Center(
                      child: Text(
                        '${cards[index % cards.length].points}',
                        style: hitturTextTheme.headline3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.pink,
                        child: Text('Hittur'),
                        onPressed: () {},
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
                  child: Text('Tillbaka'),
                )
              ],
            ),
            padding: const EdgeInsets.all(20.0),
          ),
        ),
      ),
    );
  }
}
