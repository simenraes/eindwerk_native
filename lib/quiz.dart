import 'package:flutter/material.dart';
import 'bibliotheek.dart' as lib;
import 'question.dart';
import 'result.dart';


class Quiz extends StatelessWidget {
  void answerQuestion() {
    print('Answer 2 chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return Scaffold(

      body: Column(
        children: <Widget>[
          Text('The Question'),
          ElevatedButton(
            child: Text('Question1'),
            onPressed: () => print('answer 1 chosen'),
          ),
          ElevatedButton(
            child: Text('Question2'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Question3'),
            onPressed: () {
              // ...
              print('Answer 3 chosen');
            },
          ),
        ],
      ),
    );
  }
}