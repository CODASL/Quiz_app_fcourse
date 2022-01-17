import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class DividerHeading extends StatelessWidget {
  const DividerHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(text: "Scores"),
          Container(
            width: 25,
            height: 2.5,
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
