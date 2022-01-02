import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Constants/images.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const LoginBackground(),
        logoBox(),
        const RegisterRedirect(),
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
            width: ScreenSize.width! * 0.27,
            child: Image.asset(logo),
          ),
        ],
      ),
    ),
  );
}

class RegisterRedirect extends StatelessWidget {
  const RegisterRedirect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: ScreenSize.height! * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(text: "Don't you have an account? "),
            InkWell(
              onTap: () {
                debugPrint("Clicked");
              },
              child: const CustomText(
                  text: "Register Now", fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
