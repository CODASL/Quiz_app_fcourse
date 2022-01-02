import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Constants/images.dart';
import 'package:quiz_app/Models/screensize.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const LoginBackground(),
        logoBox(),
      ],
    ));
  }
}

class LoginBackground extends StatelessWidget {
  const LoginBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: ScreenSize.height! * 0.5,
        color: primaryColor,
      ),
    );
  }
}

Align logoBox() {
  return Align(
    alignment: Alignment.topCenter,
    child: SizedBox(
      height: ScreenSize.height! * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: ScreenSize.width! * 0.3,
            child: Image.asset(logo),
          ),
        ],
      ),
    ),
  );
}
