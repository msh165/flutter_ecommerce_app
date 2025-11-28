//This handles the logic of the onbaording screen
//onboarding.dart handled the visuals

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
//this gets the getX package, which is a very popular STATE management package in flutter
//USed for
//State management
//dependancy injetcion(finding code)
//route management(moving between screens)

class OnboardingController extends GetxController{
  //now that we have extended getX we get a few specials POWERS
  //It acts as a disposable interface
  //It can define variables UI listens to, and then getX will delete this
  //view from memory when its no longer needed, for optimization purposes


  static OnboardingController get instance => Get.find();
  //static varibales lifetime go till the end of the program
  //They are declared once, and their value is maintained
  
  //This specifc line allows us to get the properties of OC without creating a class
  //Get.find(): This is GetX magic. It searches the app's memory for an
  // OnboardingController that has already been created (injected) and returns it.

// Real-world usage: Instead of passing the controller down through 5 
//different widgets, you can just write:
// OnboardingController.instance.skipPage();



  //variables

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;//obs is the observer which is another widget that changes design wWITHOUT KNOWING STATE


  //update current index when page scroll
  void updatePageIndicator(index){
    currentPageIndex.value = index;
  }
  //when the user swipes horizontally, update the dot

  //jumpt to the specific dot navigate page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }
  //allow user to tap on a specific dot


  //update current index and go to next page
  void nextPage(){
    if(currentPageIndex.value==2){
      //get to login screen
    }
    else{
      int page = currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and go to last page
  void skipPage(){
    currentPageIndex.value = 2;//2 as that is the length of our slide show
    pageController.jumpTo(2);
  }

  void SmoothPageIndicator(index){}
}