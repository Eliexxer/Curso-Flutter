import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49B9E8);

const List<Color> _colorThemes = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 2})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'Selected Color must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      useMaterial3: true,
    );
  }
}
