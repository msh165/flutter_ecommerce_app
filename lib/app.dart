//  
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibb_store/utils/theme/theme.dart';
import 'package:ibb_store/features/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      // themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      home: OnBoardingScreen()
    );
  }
}