

import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData _theme = ThemeData.dark();
  static get apply => ThemeData.from(
    colorScheme: DarkTheme._theme.colorScheme,
    textTheme: DarkTheme._theme.textTheme,
  );
}