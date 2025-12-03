
import 'package:flutter/material.dart';
import 'package:ibb_store/utils/constants/image_strings.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/constants/text_strings.dart';

class login_header extends StatelessWidget {
  const login_header({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        //ADD THE LOGO
        Image(
          height: 150,
          image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)
          ),
        Text(TTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: TSizes.sm,),
        Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
    ]
    );
  }
}