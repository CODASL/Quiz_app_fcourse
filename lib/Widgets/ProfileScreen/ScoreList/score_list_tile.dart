import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';


class ScoreListTile extends StatelessWidget {
  final String testName;
  final String img;
  final String mark;
  const ScoreListTile(
      {Key? key, required this.testName, required this.img, required this.mark})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: ListTile(
          title: CustomText(
            text: testName,
            fontSize: 12,
          ),
          tileColor: kWhite,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(img),
          ),
          trailing: CustomText(text: mark)),
    );
  }
}