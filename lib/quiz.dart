import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'result.dart';
import 'bibliotheek.dart' as lib;

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int vraagTeller = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    // if (vraagTeller==lib.vragen.length) {
    //   return Uitslag();
    // } else {
    //   return Vraag(vraagTeller, score);
    // }
    return Question();
    return Answer();

  }
}