import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/colors.dart';
import 'package:quiz_app/Models/screensize.dart';
import 'package:quiz_app/Providers/test_tile_provider.dart';
import 'package:quiz_app/Widgets/HomeScreen/test_tile_details.dart';
import 'package:quiz_app/Widgets/HomeScreen/tile_image.dart';
import 'package:quiz_app/Widgets/common/custom_button.dart';
import 'package:quiz_app/Widgets/common/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: TestTileProvider.testTileData.length,
      itemBuilder: (BuildContext context, int index) {
        var tileItem = TestTileProvider.testTileData[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Material(
            elevation: 5,
            color: kWhite,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: SizedBox(
              child: Column(
                children: [
                  //red
                  TileImage(
                    img: tileItem.image,
                  ),
                  //green
                  TestTileDetails(
                    author: tileItem.author,
                    quizs: tileItem.quizQty,
                    subject: tileItem.subject,
                    testName: tileItem.testName,
                  )
                ],
              ),
              height: 170,
            ),
          ),
        );
      },
    );
  }
}




