import 'package:flutter/material.dart';

class SColors {
  SColors._();

  static const Color primaryColor = Color(0xFF246bfd);

  //text colors
  static const Color primaryTextColor = Color(0xFF1f2029);
  static const Color secondaryTextColor = Color(0xFF797979);
  static const Color whiteTextColor = Color(0xFFFFFFFF);

  //background colors
  static const Color lightBackgroundColor = Color(0xFFF8F8F8);
  static const Color darkBackgroundColor = Color(0xFF1f2029);
  static const Color primaryBackgroundColor = Color(0xFFF2F2F2);

  //background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = SColors.white.withOpacity(0.1);

  //Button colors
  static const Color primaryButtonColor = Color(0xFF236bfd);
  static const Color secondaryButtonColor = Color(0xFFE5E5E5);
  static const Color disabledButtonColor = Color(0xFFC4C4C4);

  //border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE5E5E5);

  //error and validation colors
  static const Color errorColor = Color(0xFFf44336);
  static const Color successColor = Color(0xFF4CAF50);
  static const Color warningColor = Color(0xFFff9800);
  static const Color infoColor = Color(0xFF03A9F4);

  //neutral colors
  static const Color black = Color(0xFF232323);
  static const Color darkergray = Color(0xFF4F4F4F);
  static const Color darkgray = Color(0xFF797979);
  static const Color gray = Color(0xFFBFBFBF);
  static const Color lightgray = Color(0xFFE5E5E5);
  static const Color softgray = Color(0xFFF5F5F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lighterblue = Color(0xFFa7c4fe);
  static const Color containerBackground = Color(0xffe9f0ff);
  static const Color somegray = Color(0xFFc9ccd1);
}