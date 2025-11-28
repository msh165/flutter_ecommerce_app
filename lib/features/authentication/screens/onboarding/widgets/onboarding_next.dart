import 'package:flutter/material.dart';
import 'package:ibb_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ibb_store/utils/constants/colors.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/device/device_utility.dart';
import 'package:ibb_store/utils/helpers/helper_functions.dart';

class onboardingNextButton extends StatelessWidget {
  const onboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);
  // print(dark);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
    
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? TColors.light : TColors.primary,
          ),
        onPressed: ()=>OnboardingController.instance.nextPage(), 
        child: const Icon(Icons.keyboard_arrow_right)));
  }
}