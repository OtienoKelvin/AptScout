import 'package:apartment_scout/utilities/theme/theme.dart';
import 'package:flutter/material.dart';

class ScoutApp extends StatelessWidget {
  const ScoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: SThemeManager.lightTheme,
      darkTheme: SThemeManager.darkTheme,
    );
  }
}