import 'package:flutter/material.dart';
import 'package:quiz_app/Models/screensize.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("Login Screen  ${ScreenSize.width}"),
      ),
    );
  }
}
