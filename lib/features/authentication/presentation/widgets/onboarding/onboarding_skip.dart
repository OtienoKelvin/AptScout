import 'package:apartment_scout/features/authentication/presentation/controllers/onboarding_controller.dart';
import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      top: SDeviceUtils.getAppBarHeight(), 
      right: SSizes.defaultSpace, 
      child: TextButton(
        onPressed: () => controller.skipOnboardingClick(), 
        child: const Text(
          'Skip', 
          style: TextStyle(color: SColors.primaryColor),
        )
      )
    );
  }
}
