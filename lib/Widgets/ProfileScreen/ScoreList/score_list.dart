import 'package:flutter/material.dart';
import 'package:quiz_app/Providers/score_tile_provider.dart';
import 'package:quiz_app/Widgets/ProfileScreen/ScoreList/score_list_tile.dart';

class ScoreList extends StatelessWidget {
  const ScoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ScoreTileProvider.scoreTileData.length,
      itemBuilder: (BuildContext context, int index) {
        var tileItem = ScoreTileProvider.scoreTileData[index];
        return ScoreListTile(
          img: tileItem.leadingImg,
          mark: tileItem.marks,
          testName: tileItem.title,
        );
      },
    );
  }
}
