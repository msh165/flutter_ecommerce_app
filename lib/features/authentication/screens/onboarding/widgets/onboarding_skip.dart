import 'package:flutter/material.dart';
import 'package:ibb_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/device/device_utility.dart';

class onboardingSkip extends StatelessWidget {
  const onboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(top: TDeviceUtils.getAppBarHeight(),
    right: TSizes.defaultSpace,
    child: TextButton(onPressed: ()=>controller.skipPage(), child: const Text('skip')
    )
    );
  }
}