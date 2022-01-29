import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/images.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Widgets/common/custom_button.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mark = 50;
    
    return SizedBox(
      height: ScreenSize.height,
      width: ScreenSize.width,
      child: Column(
        children: [
          Image.asset(winnerImg),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Congratulation ! \n You did it well",
            textAlign: TextAlign.center,
            fontSize: 27,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomText(
            text: "Your Mark is $mark%",
            textAlign: TextAlign.center,
            fontSize: 24,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: "Redo",
            ontap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(text: "Go to Profile", ontap: () {}),
        ],
      ),
    );
  }
}
