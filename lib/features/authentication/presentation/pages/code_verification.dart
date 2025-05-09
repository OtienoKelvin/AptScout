import 'package:apartment_scout/common/styles/underline_text_style.dart';
import 'package:apartment_scout/features/authentication/presentation/pages/login.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/OTP/otp_digit_text_field.dart';
import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CodeVerificationScreen extends StatelessWidget {
  const CodeVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(STextStrings.verificationTitle, style: Theme.of(context).textTheme.headlineMedium,),
                    const SizedBox(height: SSizes.md,),
                    Text(STextStrings.verificationSubTitle, style: Theme.of(context).textTheme.bodyMedium!.copyWith(), textAlign: TextAlign.center,),
                    const SizedBox(height: SSizes.sm,),
                    Text('example@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: SColors.primaryColor)),
                  ],
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwSections,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OTPDigitTextFieldBox(),
                    OTPDigitTextFieldBox(),
                    OTPDigitTextFieldBox(),
                    OTPDigitTextFieldBox(),
                  ],
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwSections,),
              Column(
                children: [
                  Text(STextStrings.notReceiveOTP, style: Theme.of(context).textTheme.bodyMedium,),
                  TextButton(onPressed: (){}, child: const Text(STextStrings.resendCode, style: SUnderlineTextStyle.textStyle,))
                ],
              ),
              const SizedBox(height: SSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.offAll(() => const LoginScreen()), child: const Text(STextStrings.verify),)
              ),
            ],
          ),
        )
      ),
    );
  }
}

