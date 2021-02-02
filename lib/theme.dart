import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

const double smallIconSize = 24,
    buttonIconSize = 28,
    defaultIconSize = 32,
    hugeIconSize = 96;

final hitturTheme = ThemeData(
  primaryColorBrightness: Brightness.light,
  scaffoldBackgroundColor: HitturColors.white110,
  primaryColor: HitturColors.black,
  accentColor: HitturColors.black,
  unselectedWidgetColor: HitturColors.white140,
  fontFamily: 'Roboto',
  inputDecorationTheme: inputDecorationTheme,
  textTheme: hitturTextTheme,
  buttonTheme: baseButtonTheme,
  buttonColor: HitturColors.transparentBlack20,
  highlightColor: HitturColors.transparentBlack40,
  iconTheme: const IconThemeData(
    size: defaultIconSize,
    color: HitturColors.black,
  ),
  cursorColor: HitturColors.black,
  textSelectionHandleColor: HitturColors.black,
  appBarTheme: const AppBarTheme(color: HitturColors.black80),
  disabledColor: HitturColors.red40,
  errorColor: HitturColors.red,
  textSelectionColor: HitturColors.white120,
  bottomAppBarTheme: const BottomAppBarTheme(color: HitturColors.black80),
  cupertinoOverrideTheme: const CupertinoThemeData(
    primaryColor: HitturColors.black,
  ),
  toggleableActiveColor: HitturColors.green,
  dividerTheme: const DividerThemeData(
    color: HitturColors.white120,
    endIndent: 12.0,
    thickness: 1.0,
    space: 0.0,
  ),
);

const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
    focusedBorder: inputBorder,
    enabledBorder: inputBorder,
    errorBorder: redOutlineInputBorder,
    focusedErrorBorder: redOutlineInputBorder,
    filled: true,
    // Unfortunatly, can't use the validation without showing some error text, set the font size 0
    errorStyle: TextStyle(height: 0),
    fillColor: HitturColors.white);

const Radius radius = Radius.circular(12);
const BorderRadius borderRadius = BorderRadius.all(radius);
const BorderRadius borderRadiusRight = BorderRadius.only(
  topRight: radius,
  bottomRight: radius,
);
const BorderRadius borderRadiusLeft = BorderRadius.only(
  topLeft: radius,
  bottomLeft: radius,
);
const BorderRadius notUpperLeft = BorderRadius.only(
  topRight: radius,
  bottomRight: radius,
  bottomLeft: radius,
);

const BorderSide borderSide = BorderSide(color: HitturColors.white140);
const Border currentActivityBorder =
    Border.fromBorderSide(BorderSide(color: HitturColors.red, width: 2.0));
const Border errorBorder =
    Border.fromBorderSide(BorderSide(color: HitturColors.red));
const borderGreen =
    Border.fromBorderSide(BorderSide(color: HitturColors.green, width: 2.0));
const borderOrange =
    Border.fromBorderSide(BorderSide(color: HitturColors.orange40, width: 2.0));
const border = Border.fromBorderSide(borderSide);
const ligthShapeBorder = RoundedRectangleBorder(
  borderRadius: borderRadius,
  side: BorderSide(color: HitturColors.transparentWhite30),
);
const darkShapeBorder = RoundedRectangleBorder(
  borderRadius: borderRadius,
  side: BorderSide(color: HitturColors.transparentBlack30),
);
const BoxDecoration boxDecoration = BoxDecoration(
  borderRadius: borderRadius,
  border: border,
);
const BoxDecoration disabledBoxDecoration = BoxDecoration(
  borderRadius: borderRadius,
  color: HitturColors.transparentWhite40,
);
const BoxDecoration currentBoxDecoration = BoxDecoration(
  color: HitturColors.white,
  borderRadius: borderRadius,
  border: currentActivityBorder,
);
const BoxDecoration whiteBoxDecoration = BoxDecoration(
  color: HitturColors.white,
  borderRadius: borderRadius,
  border: border,
);
const BoxDecoration greenBoarderWhiteBoxDecoration = BoxDecoration(
  color: HitturColors.white,
  borderRadius: borderRadius,
  border: borderGreen,
);
const BoxDecoration whiteNoBorderBoxDecoration = BoxDecoration(
  color: HitturColors.white,
  borderRadius: borderRadius,
);
const BoxDecoration warningBoxDecoration = BoxDecoration(
  color: HitturColors.white,
  borderRadius: borderRadius,
  border: borderOrange,
);
const inactiveGrey = HitturColors.white110;
const BoxDecoration inactiveBoxDecoration = BoxDecoration(
  color: inactiveGrey,
  borderRadius: borderRadius,
  border: border,
);
const BoxDecoration errorBoxDecoration = BoxDecoration(
  borderRadius: borderRadius,
  border: errorBorder,
);
const BoxDecoration whiteErrorBoxDecoration = BoxDecoration(
  color: HitturColors.white,
  borderRadius: borderRadius,
  border: errorBorder,
);

BoxDecoration getBoxDecoration(bool current, bool inactive) => inactive
    ? inactiveBoxDecoration
    : current
        ? currentBoxDecoration
        : whiteBoxDecoration;

BoxDecoration selectedBoxDecoration(bool selected) =>
    selected ? greenBoarderWhiteBoxDecoration : whiteBoxDecoration;

const OutlineInputBorder inputBorder = OutlineInputBorder(
  borderSide: borderSide,
  borderRadius: borderRadius,
);

const OutlineInputBorder redOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: HitturColors.red),
  borderRadius: borderRadius,
);

const OutlineInputBorder transparentOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.transparent),
  borderRadius: borderRadius,
);

const ButtonThemeData baseButtonTheme = ButtonThemeData(
  height: 64,
  minWidth: 48,
  shape: ligthShapeBorder,
);

ButtonThemeData redButtonThemeData = baseButtonTheme.copyWith(
  minWidth: double.infinity,
  buttonColor: HitturColors.red,
  disabledColor: HitturColors.red40,
  highlightColor: HitturColors.red120,
);

ButtonThemeData greenButtonThemeData = baseButtonTheme.copyWith(
  minWidth: double.infinity,
  buttonColor: HitturColors.green,
  disabledColor: HitturColors.green40,
  highlightColor: HitturColors.green120,
);

const ButtonThemeData checkButtonThemeData = ButtonThemeData(
  height: 48,
  minWidth: 111,
  shape: darkShapeBorder,
  buttonColor: HitturColors.green,
  disabledColor: HitturColors.green40,
  highlightColor: HitturColors.green120,
);

ButtonThemeData uncheckButtonThemeData = checkButtonThemeData.copyWith(
  buttonColor: HitturColors.transparentBlack20,
  highlightColor: HitturColors.transparentBlack40,
);

ButtonThemeData actionButtonThemeData = baseButtonTheme.copyWith(
  disabledColor: Colors.transparent,
  height: 48,
);

ButtonThemeData lightActionButtonThemeData = actionButtonThemeData.copyWith(
  buttonColor: HitturColors.white,
  highlightColor: HitturColors.transparentWhite40,
  disabledColor: Colors.transparent,
  shape: ligthShapeBorder,
);

ButtonThemeData darkActionButtonThemeData = baseButtonTheme.copyWith(
  buttonColor: HitturColors.black,
  highlightColor: HitturColors.transparentBlack40,
  shape: darkShapeBorder,
);

ThemeData darkButtonTheme = hitturTheme.copyWith(
  buttonTheme: darkActionButtonThemeData,
  textTheme: hitturTheme.textTheme.copyWith(
      button: hitturTheme.textTheme.button.copyWith(color: HitturColors.black)),
  buttonColor: HitturColors.transparentBlack20,
);

ThemeData lightButtonTheme = hitturTheme.copyWith(
  buttonTheme: lightActionButtonThemeData,
  buttonColor: HitturColors.transparentWhite20,
  disabledColor: HitturColors.transparentWhite40,
);

ThemeData redButtonTheme = hitturTheme.copyWith(
  buttonTheme: redButtonThemeData,
  buttonColor: HitturColors.red,
  textTheme: hitturTheme.textTheme.copyWith(
    button: hitturTheme.textTheme.subtitle1.copyWith(
      color: HitturColors.white,
    ),
  ),
);

ThemeData greenButtonTheme = hitturTheme.copyWith(
  buttonTheme: greenButtonThemeData,
  buttonColor: HitturColors.green,
  disabledColor: HitturColors.green40,
  iconTheme: IconThemeData(
    size: buttonIconSize,
    color: HitturColors.white,
  ),
);

ThemeData greyButtonTheme = hitturTheme.copyWith(
  buttonColor: HitturColors.transparentWhite20,
  scaffoldBackgroundColor: HitturColors.black80,
  iconTheme: IconThemeData(
    size: buttonIconSize,
    color: HitturColors.white,
  ),
);

ThemeData nowButtonTheme = redButtonTheme.copyWith(
  buttonTheme: redButtonThemeData.copyWith(
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: HitturColors.red120),
      borderRadius: borderRadius,
    ),
  ),
  buttonColor: HitturColors.red,
  disabledColor: HitturColors.red40,
  highlightColor: HitturColors.red120,
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

ThemeData bottomNavigationBarTheme = hitturTheme.copyWith(
  buttonTheme: lightActionButtonThemeData.copyWith(shape: ligthShapeBorder),
  buttonColor: HitturColors.transparentWhite20,
  iconTheme: IconThemeData(size: defaultIconSize),
);

final hitturTextTheme = GoogleFonts.robotoTextTheme(
  TextTheme(
    headline1: TextStyle(
      color: HitturColors.black,
      fontSize: 96.0,
      fontWeight: light,
    ),
    headline2: TextStyle(
      color: HitturColors.black,
      fontSize: 60.0,
      fontWeight: light,
      height: 72.0 / 60.0,
    ),
    headline3: TextStyle(
      color: HitturColors.black,
      fontSize: 48.0,
      fontWeight: regular,
      height: 56.0 / 48.0,
    ),
    headline4: TextStyle(
      color: HitturColors.black,
      fontSize: 34.0,
      fontWeight: regular,
    ),
    headline5: TextStyle(
      color: HitturColors.black,
      fontSize: 24.0,
      fontWeight: regular,
    ),
    headline6: TextStyle(
      color: HitturColors.black,
      fontSize: 20.0,
      fontWeight: medium,
    ),
    subtitle1: TextStyle(
      color: HitturColors.black,
      fontSize: 16.0,
      fontWeight: medium,
      height: 24.0 / 16.0,
    ),
    subtitle2: TextStyle(
      color: HitturColors.black,
      fontSize: 14.0,
      fontWeight: medium,
      height: 24.0 / 14.0,
    ),
    bodyText1: TextStyle(
      color: HitturColors.black,
      fontSize: 16.0,
      fontWeight: regular,
      height: 28.0 / 16.0,
    ),
    bodyText2: TextStyle(
      color: HitturColors.black,
      fontSize: 14.0,
      fontWeight: regular,
      height: 20.0 / 14.0,
    ),
    caption: TextStyle(
      color: HitturColors.black,
      fontSize: 12.0,
      fontWeight: regular,
      height: 16.0 / 12.0,
    ),
    button: TextStyle(
      color: HitturColors.white,
      fontSize: 16.0,
      fontWeight: regular,
      height: 1,
    ),
    overline: TextStyle(
      fontSize: 10.0,
      fontWeight: medium,
      height: 16.0 / 10.0,
    ),
  ),
);

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
