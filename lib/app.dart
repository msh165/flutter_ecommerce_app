//  
import 'package:flutter/material.dart';
import 'package:ibb_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      home: const Scaffold( // Add a temporary home screen
        body: Center(
          child: Text('Home Screen'),
        ),
      ),
    );
  }
}