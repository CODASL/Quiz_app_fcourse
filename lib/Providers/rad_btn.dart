import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:quiz_app/Database/database.dart';

class RadBtn extends ChangeNotifier {
  int? answerIndex;
  int quizIndex = 0;
  int tileIndex = 0;

  onChange(val) {
    answerIndex = val;
    notifyListeners();

    Timer(const Duration(milliseconds: 500), () {
      var item = Database.testTileData[tileIndex];
      if (quizIndex < item.quizList.length) {
        quizIndex++;
        answerIndex = null;
        notifyListeners();
      }
    });
  }

  onBack() {
    quizIndex = 0;
    answerIndex = null;
    notifyListeners();
  }

  setTileIndex(int tIndex) {
    tileIndex = tIndex;
    notifyListeners();
  }

  bool isFinish() {
    var item = Database.testTileData[tileIndex];
    if (quizIndex >= item.quizList.length) {
      item.isDone = true;
      return true;
    }
    return false;
  }
}
