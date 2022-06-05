import 'package:flutter/material.dart';

import '../bibliotheek.dart' as lib;
import 'answer.dart';

class Answer extends StatelessWidget {
  void answerQuestion() {
    print('Answer 2 chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];


   return Container(
        child: Center(
          child: Column(
            children: <Widget>[

              ElevatedButton(
                child: Text(questions.elementAt(0)),
                onPressed: () => print('answer 1 chosen'),
              ),
              ElevatedButton(
                child: Text('answer2'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('answer3'),
                onPressed: () {
                  // ...
                  print('Answer 3 chosen');
                },
              ),
            ],
          ),
        ),
      );

  }
}