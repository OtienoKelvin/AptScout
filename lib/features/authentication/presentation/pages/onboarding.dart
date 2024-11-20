import 'package:apartment_scout/features/authentication/presentation/controllers/onboarding_controller.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/onboarding/onboarding_dot_navigation.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/onboarding/onboarding_next_button.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/onboarding/onboarding_page.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/onboarding/onboarding_prev_button.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/onboarding/onboarding_skip.dart';
import 'package:apartment_scout/utilities/constants/image_strings.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) => controller.updatePageIndex(index),
            children: const [
              OnBoardingPage(
                image: SImageStrings.onboardingImage1,
                title: STextStrings.onboardingTitle1,
                subTitle: STextStrings.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImageStrings.onboardingImage2,
                title: STextStrings.onboardingTitle2,
                subTitle: STextStrings.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImageStrings.onboardingImage3,
                title: STextStrings.onboardingTitle3,
                subTitle: STextStrings.onboardingSubTitle3,
              ),
            ],
          ),
          //Skip button
          const OnBoardingSkip(),
          //Dots navigation
          const OnBoardingDotNavigation(),
          //Continue button
          const OnBoardingNextButton(),
          //Previous button
          if(controller.currentPageIndex.value > 0) const OnBoardingPreviousButton(),
        ],
      ),
    );
  }
}







