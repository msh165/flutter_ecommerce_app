import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:ibb_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ibb_store/features/authentication/screens/onboarding/widgets/onboarding_navigation.dart';
import 'package:ibb_store/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:ibb_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ibb_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ibb_store/utils/constants/image_strings.dart';
import 'package:ibb_store/utils/constants/text_strings.dart';


class OnBoardingScreen extends StatelessWidget{ //Stateless widget here means that this is just a display, should not change dynamically
//For example, does not need to update whenever things like ticking a box or typing something happens
  const OnBoardingScreen({super.key}); //We created an instance of our onBoardingScreen 
  //we used const to optimize our app, as we dont expect its inputs to change we kept it const


  @override//We are deliberatley overrirding a function that already exists in our parent class, the widget build that is
  Widget build(BuildContext context) {//Called when flutter wants to draw this screen on device
  
  final controller = Get.put(OnboardingController());
  //Widget is return type
  //BUIld Context context tells widget where it sits in the widet tree

    ///Actual widget element that is drawn on screen when this class is called
    return Scaffold(
      body: Stack(
        children: [
          // Horizonntal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,//what happens 
            children: [
              onBoardingPage(
                image: TImages.onboardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),

              onBoardingPage(
                image: TImages.onboardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),

              onBoardingPage(
                image: TImages.onboardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              )
            ],
          )
        ,
          //SKIP BUTTON
          const onboardingSkip(),

          //DOT NAVIIGATION SMOOTH PAGE INDICATOR
          onboardingDotNavigation(),

          //Circular Button
          onboardingNextButton()
        ],
      ),
    );  }
}