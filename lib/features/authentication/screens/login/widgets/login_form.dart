import 'package:flutter/material.dart';
import 'package:ibb_store/features/authentication/screens/signup/signup.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
class login_form extends StatelessWidget {
  const login_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(child: 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwInputFields),//This is to add space between the 2 input fields
          child: Column(
            children: [
              //EMAIL
              TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
              ),
          
              const SizedBox(height: TSizes.spaceBtwInputFields),
              //PASSWORD
              TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText: TTexts.password,suffixIcon: Icon(Iconsax.eye_slash),),
              
              
              
              ),
            ],
          ),
        ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,//This is to increase space forgot pw and remember me
          children: [
        
          Row(children: [
            Checkbox(value: true, onChanged: (value){print(value);}),
            const Text(TTexts.rememberMe),
        
          ],),
          Row(children: [
            TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword),)
          ],)
        
          ],),
          const SizedBox(height: TSizes.spaceBtwItems*2),
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn)),),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.to(()=>SignUpScreen()), child: const Text(TTexts.createAccount)),),
      ],
    );
  }
}