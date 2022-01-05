import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Constants/images.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Widgets/common/custom_button.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';
import 'package:quiz_app/Widgets/common/custom_textfield.dart';

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
        const LoginCard(),
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
      height: ScreenSize.height! * 0.22,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: ScreenSize.width! * 0.26,
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

class LoginCard extends StatelessWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: Material(
            borderRadius: BorderRadius.circular(25.0),
            color: scaffoldBackground,
            elevation: 6,
            shadowColor: kblack,
            child: SizedBox(
              height: ScreenSize.height! * 0.48,
              width: ScreenSize.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomText(
                      text: "Login",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    const CustomTextField(
                      hintText: "Email Or Phone Number",
                      prefixIcon: Icons.mail,
                    ),
                    const CustomTextField(
                      isPassword: true,
                      hintText: "Password",
                      prefixIcon: Icons.lock,
                    ),
                    CustomButton(
                      height: ScreenSize.height!*0.06,
                      minWidth: ScreenSize.width!*0.45,
                      text: "Login",
                      ontap: () {},
                      radius: 25,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
