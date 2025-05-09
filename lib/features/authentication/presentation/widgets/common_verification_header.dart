import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class CommonVerificationHeader extends StatelessWidget {
  const CommonVerificationHeader({
    super.key, required this.title, required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace, ),
      child: Column(
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
          const SizedBox(height: SSizes.md,),
          Text(subTitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}