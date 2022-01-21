import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Widgets/QuizPage/answers.dart';
import 'package:quiz_app/Widgets/QuizPage/question.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class QuizPage extends StatefulWidget {
  final dynamic tileItem;
  const QuizPage({Key? key, this.tileItem}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: customFloating(
        ontap: () {
          if (_currentIndex < 2) {
            setState(() {
              _currentIndex = _currentIndex + 1;
            });
          }
          debugPrint(_currentIndex.toString());
        },
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const CustomText(text: "Test", color: kWhite),
        centerTitle: true,
      ),
      body: _currentIndex >= 2
          ? const Center(
              child: Text("Hooray ! You finished your quiz"),
            )
          : Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenSize.width! * 0.05),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Question(
                    quiz: widget.tileItem.quizList[_currentIndex].quiz,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Answers(
                    answers: widget.tileItem.quizList[_currentIndex].answer,
                  ),
                ],
              ),
            ),
    );
  }
}

Widget customFloating({required void Function()? ontap}) {
  return FloatingActionButton.extended(
    onPressed: ontap,
    label: const Icon(
      Icons.arrow_forward,
    ),
    icon: const CustomText(
      text: "Next",
      color: kWhite,
    ),
  );
}
