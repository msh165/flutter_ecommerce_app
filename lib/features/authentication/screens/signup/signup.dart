import 'package:flutter/material.dart';
import 'package:ibb_store/features/authentication/screens/signup/widgets/TSignupForm.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/constants/text_strings.dart';
import 'package:ibb_store/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget{ //Stateless widget here means that this is just a display, should not change dynamically
//For example, does not need to update whenever things like ticking a box or typing something happens
  const SignUpScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),//default appbar already has a back arrow
      body: SingleChildScrollView(//scrollable on small dvices
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //TITLE
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              //END OF TITLE
              const SizedBox(height: TSizes.spaceBtwItems),
              //FORM
              TSignUpForm(dark: dark)

            
            ],
          ),
          ),
          
        )
    );
  }
}
