import 'package:flutter/material.dart';
import 'package:quiz_app/Widgets/Login/bg.dart';
import 'package:quiz_app/Widgets/Login/logobox.dart';
import 'package:quiz_app/Widgets/Register/next_button.dart';
import 'package:quiz_app/Widgets/Register/textfield_stack.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LoginBackground(),
          logoBox(),
          const TextFieldStack(),
          const NextPageButton(),
        ],
      ),
    );
  }
}
