import 'package:flutter/material.dart';

class SChipTheme {
  SChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: Colors.white,
    labelStyle: const TextStyle(color: Colors.black),
    disabledColor: Colors.grey.withOpacity(0.4),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.all(10),
    labelPadding: const EdgeInsets.all(10),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    backgroundColor: Colors.black,    
    labelStyle: const TextStyle(color: Colors.white),
    disabledColor: Colors.grey.withOpacity(0.4),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.all(10),
    labelPadding: const EdgeInsets.all(10),
    checkmarkColor: Colors.white,
  );
}