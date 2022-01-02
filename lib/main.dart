import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';


import 'Screens/Splash Screen/splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:scaffoldBackground,
      ),
      home: const SplashScreen(),
    );
  }
}

