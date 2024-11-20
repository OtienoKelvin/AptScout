import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(STextStrings.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: SSizes.sm),
        Text(STextStrings.signUpSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}