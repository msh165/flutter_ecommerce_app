import 'package:flutter/material.dart';
import 'package:ibb_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      themeMode: ThemeMode.system,//flutter now detects the theme of the system and applies accoridnglu
      //when we do not provide any them, flutter default theme is uesed
      //wehen we do provide, it is treated under the Light mode

      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme //theme is for lighttheme
    );
  }
  

}