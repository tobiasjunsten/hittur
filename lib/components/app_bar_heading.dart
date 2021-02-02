import 'package:flutter/material.dart';
import 'package:hittur/colors.dart';
import 'package:hittur/theme.dart';

class AppBarHeading extends StatelessWidget {
  const AppBarHeading({
    Key key,
    @required this.text,
    this.iconData,
  }) : super(key: key);

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: Theme.of(context).iconTheme.copyWith(
            color: HitturColors.white,
          ),
      child: DefaultTextStyle(
        style: hitturTextTheme.headline5.copyWith(
          color: HitturColors.white,
          fontSize: 22.0,
        ),
        child: Row(
          children: [
            const Spacer(flex: 100),
            if (iconData != null) ...[
              Icon(iconData),
              const SizedBox(width: 8),
            ],
            Text(text),
            const Spacer(flex: 114),
          ],
        ),
      ),
    );
  }
}
