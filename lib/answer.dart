import 'package:flutter/material.dart';

import '../bibliotheek.dart' as lib;
import 'answer.dart';

class Answer extends StatefulWidget {
  @override
  _AnswerState createState() => _AnswerState();

}

class _AnswerState extends State<Answer>{


  @override
  Widget build(BuildContext context) {
    double knopBreedte = MediaQuery.of(context).size.width * 0.5 - lib.tekstMarge * 2;

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];


   return Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[

                ElevatedButton(
                  child: Text('answer1'),
                  onPressed: () => print('answer 1 chosen'),
                ),
                ElevatedButton(
                  child: Text('answer2'),
                  onPressed: () => print("dikkestront"),
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
        ),
      );

  }
}