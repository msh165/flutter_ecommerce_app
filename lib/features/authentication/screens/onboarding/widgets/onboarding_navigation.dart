
import 'package:flutter/widgets.dart';
import 'package:ibb_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ibb_store/utils/constants/colors.dart';
import 'package:ibb_store/utils/constants/sizes.dart';
import 'package:ibb_store/utils/device/device_utility.dart';
import 'package:ibb_store/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingDotNavigation extends StatelessWidget {

  const onboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect:ExpandingDotsEffect(activeDotColor: dark? TColors.light : TColors.dark,//If dark mode, use light colors and vice versa
        dotHeight: 6),
      )
    );
  }
}
