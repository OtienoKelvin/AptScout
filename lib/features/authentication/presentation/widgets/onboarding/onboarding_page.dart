import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(SSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: SHelperFunctions.screenWidth * 0.8,
            height: SHelperFunctions.screenHeight * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title, 
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox( height: SSizes.spaceBtwItems),
          Text(
            subTitle, 
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}