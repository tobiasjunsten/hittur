import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData hitturTheme = ThemeData(
  scaffoldBackgroundColor: HitturColors.white[110],
  primaryColor: HitturColors.black,
  accentColor: HitturColors.red,
  fontFamily: 'Roboto',
  inputDecorationTheme: inputDecorationTheme,
  textTheme: hitturTextTheme,
  buttonTheme: baseButtonTheme,
  buttonColor: HitturColors.transparantBlack[20],
  highlightColor: HitturColors.transparantBlack[40],
  cursorColor: HitturColors.black,
  textSelectionHandleColor: HitturColors.black,
  appBarTheme: AppBarTheme(color: HitturColors.black[80]),
  disabledColor: HitturColors.red[40],
  errorColor: HitturColors.red,
  textSelectionColor: HitturColors.white[120],
  bottomAppBarTheme: BottomAppBarTheme(color: HitturColors.black[80]),
);

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
    focusedBorder: inputBorder,
    enabledBorder: inputBorder,
    errorBorder: redOutlineInputBorder,
    focusedErrorBorder: redOutlineInputBorder,
    filled: true,
    // Unfortunatly, can't use the validation without showing some error text, set the font size 0
    errorStyle: TextStyle(height: 0),
    fillColor: HitturColors.white);

const BorderRadius borderRadius = BorderRadius.all(Radius.circular(12));

OutlineInputBorder inputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: HitturColors.transparantBlack[15]),
  borderRadius: borderRadius,
);

const OutlineInputBorder redOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: HitturColors.red),
  borderRadius: borderRadius,
);

const ButtonThemeData baseButtonTheme = ButtonThemeData(
  height: 64,
  minWidth: 48,
  shape: RoundedRectangleBorder(borderRadius: borderRadius),
);

ButtonThemeData redButtonThemeData = baseButtonTheme.copyWith(
  minWidth: double.infinity,
  buttonColor: HitturColors.red,
  disabledColor: HitturColors.red[40],
  highlightColor: HitturColors.red[120],
);

ButtonThemeData greenButtonTheme = ButtonThemeData(
  height: 48,
  minWidth: 188,
  shape: RoundedRectangleBorder(borderRadius: borderRadius),
  buttonColor: HitturColors.green,
  disabledColor: HitturColors.green[40],
  highlightColor: HitturColors.green[120],
);

ButtonThemeData checkButtonTheme = ButtonThemeData(
  height: 48,
  minWidth: 111,
  shape: OutlineInputBorder(
    borderSide: BorderSide(
      color: HitturColors.transparantBlack[15],
      width: 1,
    ),
    borderRadius: borderRadius,
  ),
  buttonColor: HitturColors.green,
  disabledColor: HitturColors.green[40],
  highlightColor: HitturColors.green[120],
);

ButtonThemeData actionButtonThemeData = baseButtonTheme.copyWith(
  disabledColor: Colors.transparent,
  height: 48,
);

ButtonThemeData lightActionButtonThemeData = actionButtonThemeData.copyWith(
  buttonColor: HitturColors.transparantWhite[20],
  highlightColor: HitturColors.transparantWhite[40],
  shape: OutlineInputBorder(
    borderSide: BorderSide(
      color: HitturColors.transparantWhite[15],
      width: 1,
    ),
    borderRadius: borderRadius,
  ),
);

ButtonThemeData darkActionButtonThemeData = baseButtonTheme.copyWith(
  buttonColor: HitturColors.transparantBlack[20],
  highlightColor: HitturColors.transparantBlack[40],
  shape: OutlineInputBorder(
    borderSide: BorderSide(
      color: HitturColors.transparantBlack[15],
      width: 1,
    ),
    borderRadius: borderRadius,
  ),
);

ThemeData darkButtonTheme = hitturTheme.copyWith(
    buttonTheme: darkActionButtonThemeData,
    textTheme: hitturTheme.textTheme.copyWith(
        button: hitturTheme.textTheme.button
            .copyWith(color: HitturColors.black[75])),
    buttonColor: HitturColors.transparantBlack[20]);

ThemeData lightButtonTheme = hitturTheme.copyWith(
  buttonTheme: lightActionButtonThemeData,
  buttonColor: HitturColors.transparantWhite[20],
);

ThemeData redButtonTheme = hitturTheme.copyWith(
  buttonTheme: redButtonThemeData,
  buttonColor: HitturColors.red,
  textTheme: hitturTheme.textTheme.copyWith(
    button: hitturTheme.textTheme.subhead.copyWith(
      color: HitturColors.white,
    ),
  ),
);

ThemeData nowButtonTheme = redButtonTheme.copyWith(
  buttonTheme: redButtonThemeData.copyWith(
    shape: OutlineInputBorder(
      borderSide: BorderSide(
        color: HitturColors.red[120],
        width: 1,
      ),
      borderRadius: borderRadius,
    ),
  ),
  buttonColor: HitturColors.red,
  disabledColor: HitturColors.red[40],
  highlightColor: HitturColors.red[120],
  textTheme: hitturTextTheme.copyWith(
    button: hitturTextTheme.button.copyWith(color: HitturColors.white),
  ),
);

ThemeData alreadySelectedChoiceButtonTheme = hitturTheme.copyWith(
    buttonTheme: lightActionButtonThemeData,
    buttonColor: HitturColors.black,
    textTheme: hitturTextTheme.copyWith(
        button: hitturTextTheme.button.copyWith(color: HitturColors.white)));

ThemeData availableToSelectButtonTheme = hitturTheme.copyWith(
    buttonTheme: lightActionButtonThemeData,
    buttonColor: HitturColors.white,
    textTheme: hitturTextTheme.copyWith(
        button: hitturTextTheme.button.copyWith(color: HitturColors.black)));

ThemeData menuButtonTheme = hitturTheme.copyWith(
  buttonTheme: lightActionButtonThemeData.copyWith(
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
      side: BorderSide(
        width: 1,
        color: HitturColors.transparantWhite[15],
      ),
    ),
  ),
  buttonColor: HitturColors.transparantWhite[20],
);

TextTheme hitturTextTheme = TextTheme(
  display4: baseTextStyle.copyWith(
    fontSize: 96.0,
    fontWeight: light,
  ),
  display3: baseTextStyle.copyWith(
    fontSize: 60.0,
    fontWeight: light,
    height: 72.0 / 60.0,
  ),
  display2: baseTextStyle.copyWith(
    fontSize: 48.0,
    fontWeight: regular,
    height: 56.0 / 48.0,
  ),
  display1: baseTextStyle.copyWith(
    fontSize: 34.0,
    fontWeight: regular,
  ),
  headline: baseTextStyle.copyWith(
    fontSize: 24.0,
    fontWeight: regular,
  ),
  title: baseTextStyle.copyWith(
    fontSize: 20.0,
    fontWeight: medium,
  ),
  subhead: baseTextStyle.copyWith(
    fontSize: 16.0,
    fontWeight: medium,
    height: 24.0 / 16.0,
  ),
  body2: baseTextStyle.copyWith(
    fontSize: 16.0,
    height: 28.0 / 16.0,
    fontWeight: regular,
  ),
  body1: baseTextStyle.copyWith(
    fontSize: 14.0,
    height: 20.0 / 14.0,
    fontWeight: regular,
  ),
  caption: baseTextStyle.copyWith(
    fontSize: 12.0,
    height: 16.0 / 12.0,
    fontWeight: regular,
  ),
  button: baseTextStyle.copyWith(
    fontSize: 14.0,
    fontWeight: medium,
    color: HitturColors.white,
  ),
  subtitle: baseTextStyle.copyWith(
    fontSize: 14.0,
    height: 20.0 / 14.0,
    fontWeight: medium,
  ),
  overline: baseTextStyle.copyWith(
    fontSize: 10.0,
    height: 16.0 / 10.0,
    fontWeight: medium,
  ),
);

const TextStyle baseTextStyle = TextStyle(
  fontFamily: 'Roboto',
  color: HitturColors.black,
  fontStyle: FontStyle.normal,
  letterSpacing: 0.0,
);

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;

const Map<int, MaterialColor> weekDayColor = {
  DateTime.monday: HitturColors.green,
  DateTime.tuesday: HitturColors.darkBlue,
  DateTime.wednesday: HitturColors.white,
  DateTime.thursday: HitturColors.brown,
  DateTime.friday: HitturColors.yellow,
  DateTime.saturday: HitturColors.pink,
  DateTime.sunday: HitturColors.red,
};

Map<int, ThemeData> weekDayTheme = {
  DateTime.monday: _dayTheme(
    darkButtonTheme,
    weekDayColor[DateTime.monday],
    textColor: HitturColors.black,
    primaryColor: HitturColors.white,
  ),
  DateTime.tuesday: _dayTheme(
    lightButtonTheme,
    weekDayColor[DateTime.tuesday],
    appBarBrightness: Brightness.dark,
  ),
  DateTime.wednesday: _dayTheme(
    darkButtonTheme,
    weekDayColor[DateTime.wednesday],
    textColor: HitturColors.black,
  ),
  DateTime.thursday: _dayTheme(
    lightButtonTheme,
    weekDayColor[DateTime.thursday],
    appBarBrightness: Brightness.dark,
  ),
  DateTime.friday: _dayTheme(
    darkButtonTheme,
    weekDayColor[DateTime.friday],
    textColor: HitturColors.black,
    primaryColor: HitturColors.white,
  ),
  DateTime.saturday: _dayTheme(
    darkButtonTheme,
    weekDayColor[DateTime.saturday],
    textColor: HitturColors.black,
  ),
  DateTime.sunday: _dayTheme(
    lightButtonTheme,
    weekDayColor[DateTime.sunday],
    appBarBrightness: Brightness.dark,
  ),
};

ThemeData _dayTheme(
  ThemeData themeData,
  MaterialColor color, {
  MaterialColor textColor = HitturColors.white,
  MaterialColor primaryColor = HitturColors.black,
  Brightness appBarBrightness = Brightness.light,
}) =>
    themeData.copyWith(
      primaryColor: primaryColor,
      appBarTheme: hitturTheme.appBarTheme.copyWith(
        color: color,
        brightness: appBarBrightness,
      ),
      scaffoldBackgroundColor: color[20],
      textTheme: hitturTextTheme.copyWith(
        title: hitturTextTheme.title.copyWith(color: textColor),
        button: hitturTextTheme.button.copyWith(color: textColor),
        subhead: hitturTextTheme.subhead.copyWith(color: textColor),
      ),
    );
