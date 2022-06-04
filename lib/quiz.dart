import 'package:flutter/material.dart';
import 'bibliotheek.dart' as lib;
import 'question.dart';
import 'result.dart';



class Quiz extends StatefulWidget {
  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  int vraagTeller = 0;
  int score = 0;
  int aantalVragen = 1;

  @override
  Widget build(BuildContext context) {
    if (vraagTeller==aantalVragen) {
      return Result();
    } else {
      return Question();
    }
  }
}