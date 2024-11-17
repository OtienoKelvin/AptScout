import 'package:flutter/material.dart';

class STextFieldTheme {
  STextFieldTheme._();

  static InputDecorationTheme lightTextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(color: Colors.black, fontSize: 16),
    hintStyle: const TextStyle().copyWith(color: Colors.grey, fontSize: 16),
    errorStyle: const TextStyle().copyWith(color: Colors.red, fontSize: 12),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black, fontSize: 16),
    border: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.grey), borderRadius: BorderRadius.circular(10)),
    enabledBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.grey), borderRadius: BorderRadius.circular(10)),
    focusedBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.grey), borderRadius: BorderRadius.circular(10)),
    errorBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.red), borderRadius: BorderRadius.circular(10)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.red), borderRadius: BorderRadius.circular(10)),
  );
  

  static InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(color: Colors.white, fontSize: 16),
    hintStyle: const TextStyle().copyWith(color: Colors.white, fontSize: 16),
    errorStyle: const TextStyle().copyWith(color: Colors.red, fontSize: 12),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.white, fontSize: 16),
    border: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.grey), borderRadius: BorderRadius.circular(10)),
    enabledBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.grey), borderRadius: BorderRadius.circular(10)),
    focusedBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.white), borderRadius: BorderRadius.circular(10)),
    errorBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.red), borderRadius: BorderRadius.circular(10)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(borderSide: const BorderSide(width:1, color: Colors.red), borderRadius: BorderRadius.circular(10)),
  );
}