import 'package:apartment_scout/features/authentication/presentation/controllers/onboarding_controller.dart';
import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingPreviousButton extends StatelessWidget {
  const OnBoardingPreviousButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      left: SSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => controller.previousOnboardingClick(), 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: const CircleBorder(
            side: BorderSide(color: SColors.primaryColor)
          )
        ),
        child: const Icon(Icons.arrow_back, color: SColors.primaryColor,)
      ),
    );
  }
}