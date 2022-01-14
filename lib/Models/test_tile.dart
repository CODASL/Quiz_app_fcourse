import 'package:quiz_app/Constants/images.dart';

class TestTile {
  String image;
  String testName;
  String subject;
  String author;
  String quizQty;
  TestTile({
    this.image = testimg,
    required this.testName,
    required this.subject,
    required this.author,
    required this.quizQty,
  });
}
