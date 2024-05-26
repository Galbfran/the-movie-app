import 'package:flutter/material.dart';

class AppTheme {
  ThemeData  getTheme() => ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.blueGrey,
      onSecondary: Colors.white
    )
  );
}