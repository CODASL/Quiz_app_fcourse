import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/images.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Widgets/common/custom_button.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int mark = 50;

    return SizedBox(
      height: ScreenSize.height,
      width: ScreenSize.width,
      child: Column(
        children: [
          Image.asset(winnerImg),
          const SizedBox(
            height: 50,
          ),
          const CustomText(text: "Congratulation !",fontSize: 20,),
          const CustomText(text: "You did it well",fontSize: 17,),
          const SizedBox(
            height: 15,
          ),
          CustomText(text: "Your Mark is $mark" , fontSize: 20,),
          const SizedBox(
            height: 20,
          ),
          const CustomButton(text: "Redo"),
          const SizedBox(
            height: 10,
          ),
          const CustomButton(text: "Return to Home"),
        ],
      ),
    );
  }
}
