import 'package:apartment_scout/features/authentication/presentation/pages/passwordReset/forget_password_verification.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/common_verification_header.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              const CommonVerificationHeader(title: STextStrings.forgotPasswordTitle, subTitle: STextStrings.forgotPasswordSubTitle,),
              const SizedBox(height: SSizes.spaceBtwSections,),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  //border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: SSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(()=> const ForgetPasswordVerificationScreen()), 
                  child: const Text(STextStrings.sendResetCode,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

