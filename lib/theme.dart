import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    fontFamily: 'SF Pro Text',
    appBarTheme: appBarTheme,
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonThemeData,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dividerTheme: dividerThemeData,
    useMaterial3: true,
  );
}

const AppBarTheme appBarTheme = AppBarTheme(
  color: kBackgroundColor,
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: Colors.black),
  titleTextStyle: kAppBarTitleTextStyle,
);

final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.symmetric(
    vertical: kDefaultPadding,
    horizontal: kDefaultPadding,
  ),
  floatingLabelStyle: MaterialStateTextStyle.resolveWith(
    (states) {
      final Color color = states.contains(MaterialState.error)
          ? Colors.red
          : kPrimaryActiveColor;
      return TextStyle(color: color);
    },
  ),
  fillColor: kInputColor,
  filled: true,
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder.copyWith(
    borderSide: BorderSide(
      color: kPrimaryActiveColor.withOpacity(0.5),
    ),
  ),
  errorBorder: kDefaultOutlineInputBorder.copyWith(
    borderSide: kErrorBorderSide,
  ),
  focusedErrorBorder: kDefaultOutlineInputBorder.copyWith(
    borderSide: kErrorBorderSide,
  ),
);

const ButtonThemeData buttonThemeData = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);

const DividerThemeData dividerThemeData = DividerThemeData(
  color: Color(0x66868686),
  space: 0,
  thickness: 1,
);
