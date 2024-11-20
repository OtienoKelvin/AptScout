import 'package:apartment_scout/common/styles/spacing_style.dart';
import 'package:apartment_scout/common/widgets/login_signup/form_divider.dart';
import 'package:apartment_scout/common/widgets/login_signup/form_footer.dart';
import 'package:apartment_scout/common/widgets/login_signup/social_button.dart';
import 'package:apartment_scout/features/authentication/presentation/pages/login.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/sign_up/sign_up_form.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/sign_up/sign_up_header.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:apartment_scout/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //header
              const SignUpHeader(),

              //form
              const SignUpForm(),

              //divider
              FormDivider(dark: dark, dividerText: STextStrings.orSignUpWith,),
              const SizedBox(height: SSizes.spaceBtwSections,),

              //social media
              SocialButtons(dark: dark),
              const SizedBox(height: SSizes.spaceBtwSections,),

              //footer
              Footer(footerQuestionText: STextStrings.alreadyHaveAccount, footerButtonText: STextStrings.signIn, footerButtonAction: () => Get.to(() => const LoginScreen(),)),
            ],
          ),
        ),
      ),
    );
  }
}



