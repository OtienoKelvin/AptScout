import 'package:apartment_scout/features/authentication/presentation/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //Update page idicator
  void updatePageIndex(index) => currentPageIndex.value = index;

  //Jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  //Skip onboarding
  void skipOnboardingClick(){
    currentPageIndex.value == 2;
    pageController.jumpToPage(2);
  }

  //Continue onboarding
  void continueOnboardingClick(){
    if(currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
      currentPageIndex.value = page;
    } 
  }

  //Previous onboarding
  void previousOnboardingClick(){
    if(currentPageIndex.value > 0) {
      int page = currentPageIndex.value - 1;
      pageController.jumpToPage(page);
      currentPageIndex.value = page;
    }
  }
}