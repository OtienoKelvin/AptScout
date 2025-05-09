import 'package:apartment_scout/features/authentication/presentation/pages/login.dart';
import 'package:apartment_scout/features/authentication/presentation/widgets/common_verification_header.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              const CommonVerificationHeader(title: STextStrings.resetPasswordTitle, subTitle: STextStrings.resetPasswordSubTitle,),
              const SizedBox(height: SSizes.spaceBtwSections,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    const SizedBox(height: SSizes.spaceBtwInputFields,),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Confirm Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    const SizedBox(height: SSizes.spaceBtwSections,),
                    SizedBox(
                      width: double.infinity, 
                      child: ElevatedButton(
                        onPressed: () => Get.offAll(() => const LoginScreen()), 
                        child: const Text(STextStrings.resetPassword),
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}