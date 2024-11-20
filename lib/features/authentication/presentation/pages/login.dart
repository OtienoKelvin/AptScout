import 'package:apartment_scout/common/styles/spacing_style.dart';
import 'package:apartment_scout/common/widgets/login_signup/form_divider.dart';
import 'package:apartment_scout/common/widgets/login_signup/form_footer.dart';
import 'package:apartment_scout/common/widgets/login_signup/social_button.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/login/login_form.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/login/login_header.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:apartment_scout/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Header
              LoginHeader(dark: dark),

              //Login form
              const LoginForm(),

              //Divider
              FormDivider(dark: dark, dividerText: 'Or Sign In With',),
              const SizedBox(height: SSizes.spaceBtwSections,),

              //Social media buttons
              SocialButtons(dark: dark),
              const SizedBox(height: SSizes.spaceBtwSections,),

              //Sign up button
              const Footer(footerQuestionText: STextStrings.dontHaveAccount, footerButtonText: STextStrings.signUp,)
            ],
          ),
        ),
      ),
    );
  }
}









