import 'package:apartment_scout/features/authentication/presentation/pages/onboarding.dart';
import 'package:apartment_scout/utilities/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScoutApp extends StatelessWidget {
  const ScoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SThemeManager.lightTheme,
      darkTheme: SThemeManager.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}