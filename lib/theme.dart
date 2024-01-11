import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    fontFamily: 'Helvetica Neue',
    appBarTheme: appBarTheme,
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonThemeData,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dividerTheme: dividerThemeData,
    useMaterial3: true,
  );
}

final AppBarTheme appBarTheme = AppBarTheme(
  color: kBackgroundColor,
  elevation: 0,
  centerTitle: true,
  iconTheme: const IconThemeData(color: Colors.black),
  titleTextStyle: kAppBarTitleTextStyle,
);

final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.symmetric(
    vertical: kSecondaryVerticalPadding,
    horizontal: kDefaultHorizontalPadding,
  ),
  floatingLabelStyle: MaterialStateTextStyle.resolveWith(
    (states) {
      final Color color = states.contains(MaterialState.error)
          ? Colors.red
          : kPrimaryActiveColor;
      return TextStyle(color: color);
    },
  ),
  fillColor: kTextFieldInputColor,
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
  color: kPrimaryBorderColor,
  space: 0,
  thickness: 1,
);
