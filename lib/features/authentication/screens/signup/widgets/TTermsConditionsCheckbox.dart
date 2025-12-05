import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ibb_store/utils/constants/colors.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/constants/text_strings.dart';

class termsConditionsCheckBox extends StatelessWidget {
  const termsConditionsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 24,height: 24,child: Checkbox(value: true, onChanged: (Value){}),),
      const SizedBox(width: TSizes.defaultSpace),
      Text.rich(TextSpan(children: [
        TextSpan(text: '${TTexts.iAgreeTo} '),
        TextSpan(text: TTexts.privacyPolicy,style: TextStyle(color: TColors.buttonPrimary,decoration: TextDecoration.underline),recognizer: TapGestureRecognizer()..onTap=(){print("Privacy policy tapped!");}),
        TextSpan(text: ' and '),
        TextSpan(text: TTexts.termsOfUse,style: TextStyle(color: TColors.buttonPrimary,decoration: TextDecoration.underline),recognizer: TapGestureRecognizer()..onTap=(){print("Terms of use tapped!");})
      ]))
    ]);
  }
}