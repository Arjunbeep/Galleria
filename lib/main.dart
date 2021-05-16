import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerButton() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  var questionIndex = 0;
  Widget build(BuildContext context) {
    var questions = [
      'What is Your favorite colour',
      'What is your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          //vertical layout
          children: [
            Text('This is My default text'),
            Question(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerButton, //pointer
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed:
                  answerButton, //pointer and  also do () =>print('Answer2 Chosen')
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerButton, //pointer
            ),
          ],
        ),
      ),
    );
  }
}
