import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Screens/HomeScreen/homescreen.dart';
import 'package:quiz_app/Screens/MyQuizsScreen/my_quizs.dart';
import 'package:quiz_app/Screens/ProfileScreen/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> items = const <Widget>[
      Icon(Icons.home, size: 30, color: kWhite),
      Icon(Icons.quiz, size: 30, color: kWhite),
      Icon(Icons.person, size: 30, color: kWhite),
    ];
    List<Widget> pages = const <Widget>[
      HomeScreen(),
      MyQuizs(),
      ProfileScreen(),
    ];
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: currentIndex,
          color: primaryColor,
          backgroundColor: scaffoldBackground,
          items: items,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: pages[currentIndex]);
  }
}
