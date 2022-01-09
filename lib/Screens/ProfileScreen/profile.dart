import 'package:flutter/material.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(text: "ProfileScreen"),
    );
  }
}