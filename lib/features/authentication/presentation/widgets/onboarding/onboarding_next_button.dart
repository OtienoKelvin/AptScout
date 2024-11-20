import 'package:apartment_scout/features/authentication/presentation/controllers/onboarding_controller.dart';
import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      right: SSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => controller.continueOnboardingClick(), 
        style: ElevatedButton.styleFrom(
          backgroundColor: SColors.primaryColor,
          shape: const CircleBorder()
        ),
        child: const Icon(Icons.arrow_forward)
      ),
    );
  }
}