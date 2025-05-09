import 'package:apartment_scout/utilities/constants/colors.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:flutter/material.dart';

class OTPDigitTextFieldBox extends StatelessWidget {
  const OTPDigitTextFieldBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 65,
      decoration: BoxDecoration(
        color: SColors.lightBackgroundColor,
        borderRadius: BorderRadius.circular(SSizes.sm),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        autofocus: true,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          if(value.length == 1) FocusScope.of(context).nextFocus();
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(SSizes.sm), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(SSizes.sm), borderSide: BorderSide.none),
          hintText: '-',
        ),
      ),
    );
  }
}