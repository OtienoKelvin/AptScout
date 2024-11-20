import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:apartment_scout/utilities/constants/image_strings.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: dark ? SColors.darkgray : SColors.gray,),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: (){},
          icon: const Image(
            height: SSizes.iconMd,
            width: SSizes.iconMd,
            image: AssetImage(SImageStrings.appleIcon),
          ),
        ),
      ),
      const SizedBox(width: SSizes.spaceBtwItems,),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: dark ? SColors.darkgray : SColors.gray,),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: (){},
          icon: const Image(
            height: SSizes.iconMd,
            width: SSizes.iconMd,
            image: AssetImage(SImageStrings.googleIcon),
          ),
        ),
      ),
      const SizedBox(width: SSizes.spaceBtwItems,),
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: dark ? SColors.darkgray : SColors.gray,),
          borderRadius: BorderRadius.circular(100),
        ),
        child: IconButton(
          onPressed: (){},
          icon: const Image(
            height: SSizes.iconMd,
            width: SSizes.iconMd,
            image: AssetImage(SImageStrings.facebookIcon),
          ),
        ),
      ),
    ],);
  }
}