import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Providers/password_visibility.dart';
import 'Screens/Splash Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PasswordVisibility>(
          create: (context) => PasswordVisibility(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(),
          scaffoldBackgroundColor: scaffoldBackground,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
