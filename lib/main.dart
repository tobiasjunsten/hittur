import 'package:flutter/material.dart';
import 'package:hittur/pages/game_page.dart';
import 'package:hittur/theme.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hittur',
      theme: hitturTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hittur',
              style: hitturTextTheme.title,
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => GamePage(),
                  ));
                },
                child: Text('Nytt spel'))
          ],
        ),
      )),
    );
  }
}
