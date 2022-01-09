import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Routers/route_names.dart';

class RegisterWidgets extends ChangeNotifier {
  int index = 0;

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
}
