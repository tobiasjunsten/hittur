import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hittur/all.dart';
import 'package:hittur/bloc/all.dart';

class HitturAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  HitturAppBar({
    Key key,
  })  : preferredSize = Size.fromHeight(68.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      decoration: BoxDecoration(color: Theme.of(context).appBarTheme.color),
      child: SafeArea(
        child: IconTheme(
          data: Theme.of(context).iconTheme.copyWith(
                color: HitturColors.white,
              ),
          child: DefaultTextStyle(
            style: hitturTextTheme.headline5.copyWith(
              color: HitturColors.white,
              fontSize: 22.0,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Text('Poäng:'),
                  SizedBox(
                    width: 8,
                  ),
                  BlocBuilder<GameBloc, GameState>(builder: (context, state) {
                    return Text(state.totalPoints().toString());
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
