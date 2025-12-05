import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:ibb_store/common/widgets/login_signup/form_divider.dart';
import 'package:ibb_store/common/widgets/login_signup/social_buttons.dart';
import 'package:ibb_store/features/authentication/screens/signup/widgets/TTermsConditionsCheckbox.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(child: 
    Column(
      children: [//FIRST ROW WITH FIRST AND LAST NAME
        Row(children: [
        Expanded(child: TextFormField(expands: false,decoration: const InputDecoration(labelText: TTexts.firstName,prefixIcon: Icon(Iconsax.activity)))),
        const SizedBox(width: TSizes.defaultSpace),
        Expanded(child: TextFormField(expands: false,decoration: const InputDecoration(labelText: TTexts.lastName,prefixIcon: Icon(Iconsax.activity))))
      ]),
      const SizedBox(height: TSizes.defaultSpace),
      //END OF FIRST ROW
      //username
      TextFormField(expands: false,decoration: const InputDecoration(labelText: TTexts.username,prefixIcon: Icon(Iconsax.user))),
      const SizedBox(height: TSizes.defaultSpace),
      //email
      TextFormField(expands: false,decoration: const InputDecoration(labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct))),
      const SizedBox(height: TSizes.defaultSpace),
      //Phone number
      TextFormField(expands: false,decoration: const InputDecoration(labelText: TTexts.phoneNo,prefixIcon: Icon(Iconsax.mobile))),
      //password
      const SizedBox(height: TSizes.defaultSpace),
      TextFormField(expands: false,decoration: const InputDecoration(labelText: TTexts.password,prefixIcon: Icon(Iconsax.password_check),suffixIcon: Icon(Iconsax.eye_slash))),
      const SizedBox(height: TSizes.defaultSpace*2),
      
      //TERMS AND CONDITIONS
      termsConditionsCheckBox(),
      //create account button
      const SizedBox(height: TSizes.defaultSpace*2),
      SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.createAccount)),),
      //Divider
      const SizedBox(height: TSizes.defaultSpace),
      form_divider(dark: dark, dividerText: TTexts.orSignUpWith.capitalize!),
      social_buttons()
      ],
    )
      
      );
  }
}