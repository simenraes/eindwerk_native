import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'result.dart';
import 'bibliotheek.dart' as lib;
import 'package:http/http.dart' as http;


class Quiz extends StatefulWidget {
  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // int questionIndex = 0;
  int vraagTeller = 0;


  // _answerQuestion() {
  //   if (questionIndex < lib.questions.length - 1) {
  //     setState(() {
  //       questionIndex = questionIndex + 1;
  //     });
  //   }
  //   print(questionIndex);
  // }   String questionText= 'test';

  @override
  Widget build(BuildContext context) {
    // if (vraagTeller==lib.vragen.length) {
    //   return Uitslag();
    // } else {
    //   return Vraag(vraagTeller, score);
    // }
    return Question(vraagTeller);

  }
}