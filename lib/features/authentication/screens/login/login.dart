import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibb_store/common/styles/spacing_styles.dart';
import 'package:ibb_store/common/widgets/login_signup/form_divider.dart';
import 'package:ibb_store/common/widgets/login_signup/social_buttons.dart';
import 'package:ibb_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ibb_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/constants/text_strings.dart';
import 'package:ibb_store/utils/helpers/helper_functions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);//checking if dark or light mode of system to decide logo

    return Scaffold(
      body: SingleChildScrollView(
        child: 
          Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(  
              children: [
                login_header(dark: dark),
                const SizedBox(height: TSizes.spaceBtwItems),
                login_form(),
                form_divider(dividerText: TTexts.orSignInWith.capitalize!, dark: dark),
                const SizedBox(height: TSizes.spaceBtwItems*0.5),
                social_buttons()
            ],)
          ),
      ),
    );
  }
  
  
}





