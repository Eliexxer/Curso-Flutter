import 'package:flutter/material.dart';

const colorlist = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.yellow,
  Colors.teal,
  Colors.cyan,
  Colors.brown,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < colorlist.length - 1,
        'Color no es válido',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorlist[selectedColor],
    appBarTheme: const AppBarTheme(centerTitle: false),
  );
}
