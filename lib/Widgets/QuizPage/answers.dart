import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class Answers extends StatelessWidget {
  final List<String> answers;
  const Answers({Key? key, required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      color: kWhite,
      width: ScreenSize.width,
      child: Column(
        children: [
          RadioListTile(
            value: 1,
            groupValue: 1,
            onChanged: (val) {
              debugPrint(val.toString());
            },
            title: CustomText(
              text: answers[0],
              fontSize: 20,
            ),
          ),
          RadioListTile(
            value: 2,
            groupValue: 1,
            onChanged: (val) {
              debugPrint(val.toString());
            },
            title: CustomText(
              text: answers[1],
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
