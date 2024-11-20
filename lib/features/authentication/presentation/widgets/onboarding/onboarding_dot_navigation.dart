import 'package:apartment_scout/features/authentication/presentation/controllers/onboarding_controller.dart';
import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:apartment_scout/utilities/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 20,
      left: SDeviceUtils.getScreenWidth(context) * 0.5 - 25,
      child: SmoothPageIndicator(
        effect: const ScaleEffect(
          activeDotColor: SColors.primaryColor,
          dotColor: SColors.lighterblue,
          dotHeight: 10,
          dotWidth: 10
        ),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick, 
        count: 3
      )
    );
  }
}