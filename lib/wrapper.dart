import 'package:flutter/material.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'Screens/Login/login.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    ScreenSize.getScreenSize(h: _height, w: _width);
    return const Login();
  }
}
