import 'package:apartment_scout/common/styles/underline_text_style.dart';
import 'package:apartment_scout/utilities/constants/sizes.dart';
import 'package:apartment_scout/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                labelText: 'Email'
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields,),
        
            //Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                labelText: 'Password',
                suffixIcon: Icon(Icons.visibility)
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwInputFields /2,),
        
            //Remember me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(children: [
                  Checkbox(value: true, onChanged: (value){},),
                  const Text('Remember me'),
                ],),
        
                //Forgot password
                const Spacer(),
                TextButton(onPressed: (){}, child: const Text('Forgot Password?', style: SUnderlineTextStyle.textStyle,))
              ],
            ),
            const SizedBox(height: SSizes.spaceBtwSections,),
        
            //Login button
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: (){},  
                child: const Text(STextStrings.signIn)
              )
            ),
          ],
        ),
      )
    );
  }
}