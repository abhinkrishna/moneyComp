import 'package:flutter/material.dart';
import 'colors.dart';

var colors = ConfigColors();
var textTheme = TextTheme(
  headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  headline4: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
  headline6: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
  bodyText2: TextStyle(fontSize: 12.0),
);

class ConfigTheme {

  var appTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    primaryColor: colors.bgColor,
    scaffoldBackgroundColor: colors.bgColor,
    highlightColor: colors.highlight,
    textTheme: textTheme
  );

}