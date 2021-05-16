//custom widget
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
