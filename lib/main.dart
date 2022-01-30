import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Providers/providers.dart';
import 'package:quiz_app/Routers/route_names.dart';
import 'Routers/route.dart';


void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        routes: routes,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(),
          scaffoldBackgroundColor: scaffoldBackground,
        ),
        initialRoute: splashScreen,
      ),
    );
  }
}
