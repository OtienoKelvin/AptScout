import 'package:apartment_scout/common/styles/underline_text_style.dart';
import 'package:apartment_scout/features/authentication/presentation/pages/code_verification.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration:  const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Full Name',
                ),
              ),
            ),
            const SizedBox(width: SSizes.spaceBtwInputFields,),
            Expanded(
              child: TextFormField(
                decoration:  const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Last Name',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwInputFields,),
        TextFormField(
          decoration:  const InputDecoration(
            prefixIcon: Icon(Icons.face),
            labelText: 'Username',
          )
        ),
        const SizedBox(height: SSizes.spaceBtwInputFields,),
        TextFormField(
          decoration:  const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email',
          )
        ),
        const SizedBox(height: SSizes.spaceBtwInputFields,),
        TextFormField(
          decoration:  const InputDecoration(
            prefixIcon: Icon(Icons.phone),
            labelText: 'Phone Number',
          )
        ),
        const SizedBox(height: SSizes.spaceBtwInputFields,),
        TextFormField(
          decoration:  const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            suffixIcon: Icon(Icons.visibility_off)
          )
        ),
        const SizedBox(height: SSizes.spaceBtwInputFields / 2,),

        //checkbox
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(width: SSizes.spaceBtwItems,),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'I agree with ', style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(text: 'Terms & Conditions', style: SUnderlineTextStyle.textStyle, recognizer: TapGestureRecognizer()..onTap = (){}),
                ]
              )
            )
          ]
        ),
        const SizedBox(height: SSizes.spaceBtwSections,),

        //Sign up button
        SizedBox(
          width: double.infinity, 
          child: ElevatedButton(
            onPressed: () => Get.to(()=> const CodeVerificationScreen()), 
            child: const Text(STextStrings.signUp),
          )
        ),
      ],),
    ));
  }
}