import 'package:apartment_scout/utilities/constants/image_strings.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          height: 100,
          image: AssetImage(SImageStrings.appLogo),
        ),
        Text(STextStrings.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: SSizes.sm),
        Text(STextStrings.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,)
      ],
    );
  }
}