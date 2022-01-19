import 'package:quiz_app/Models/test_tile.dart';

class TestTileProvider {
  static List<TestTile> testTileData = [
    TestTile(
      testName: "1st Term",
      subject: "Physics",
      author: "Mr Saman",
      quizQty: "50",
      isDone: true,
    ),
    TestTile(
      testName: "2nd Term",
      subject: "Biology",
      author: "Mr Kuruppu",
      quizQty: "40",
    ),
    TestTile(
      testName: "3rd Term",
      subject: "Sinhala",
      author: "Mr Nimal",
      quizQty: "25",
    ),
    TestTile(
      testName: "4th Term",
      subject: "English",
      author: "Mr Saman",
      quizQty: "35",
      isDone: true,
    ),
  ];
}
