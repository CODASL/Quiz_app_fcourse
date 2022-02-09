import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Routers/route_names.dart';

class RegisterWidgets extends ChangeNotifier {
  int index = 0;
  String? fullName;
  String? _email;
  String? _password;
  String? _confirmPassword;

  void onChange(BuildContext context) {
    if (index < 3) {
      index = index + 1;
      notifyListeners();
    } else {
      Navigator.pushNamed(context, home);
      index = 0;
      notifyListeners();
    }
  }

   onTextChange(String text, int index) {
    switch (index) {
      case 0:
        fullName = text;
        notifyListeners();
        break;
      case 1:
        _email = text;
        notifyListeners();
        break;
      case 2:
        _password = text;
        notifyListeners();
        break;
      case 3:
        _confirmPassword = text;
        notifyListeners();
        break;
    }
  }
}
