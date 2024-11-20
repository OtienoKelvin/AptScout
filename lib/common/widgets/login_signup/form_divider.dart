import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark, required this.dividerText,
  });

  final String dividerText;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: Divider(color: dark ? SColors.darkgray : SColors.gray, thickness: 0.5, indent: 60, endIndent: 5)),
        Text('Or Sign In With', style: Theme.of(context).textTheme.labelMedium,),
        Flexible(child: Divider(color: dark ? SColors.darkgray : SColors.gray, thickness: 0.5, indent: 5, endIndent: 60,)),
      ],
    );
  }
}