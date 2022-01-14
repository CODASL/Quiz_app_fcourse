import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Widgets/common/custom_button.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class TestTileDetails extends StatelessWidget {
  final String testName;
  final String subject;
  final String author;
  final String quizs;
  const TestTileDetails(
      {Key? key,
      required this.testName,
      required this.subject,
      required this.author,
      required this.quizs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: primaryColor.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SizedBox(
                width: ScreenSize.width! * 0.425,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                        text: testName,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: kWhite),
                    CustomText(text: subject, fontSize: 10, color: kWhite),
                    const SizedBox(height: 10),
                    CustomText(text: author, fontSize: 10, color: kWhite)
                  ],
                ),
              ),
              SizedBox(
                width: ScreenSize.width! * 0.425,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      text: "$quizs Quizs",
                      color: kWhite,
                    ),
                    CustomButton(
                      text: "Start Quiz",
                      ontap: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
