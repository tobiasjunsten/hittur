import 'package:flutter/material.dart';
import 'package:hittur/colors.dart';
import 'package:hittur/model/card.dart';
import 'package:hittur/theme.dart';

class GamePage extends StatelessWidget {
  GamePage({Key key}) : super(key: key);
  final cards = [
    GameCard('Car'),
    GameCard('Bike'),
    GameCard('Tractor'),
    GameCard('Dog')
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
                child: Text(
                  '${cards[index % cards.length].name}',
                  style: hitturTextTheme.title,
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
