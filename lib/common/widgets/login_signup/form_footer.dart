import 'package:apartment_scout/common/styles/underline_text_style.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key, required this.footerQuestionText, required this.footerButtonText,
  });
  
  final String footerQuestionText;
  final String footerButtonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(footerQuestionText, style: Theme.of(context).textTheme.labelMedium,),
        TextButton(
          onPressed: (){}, 
          child: Text(
            footerButtonText, 
            style: SUnderlineTextStyle.textStyle,
          ),
        )
      ],
    );
  }
}