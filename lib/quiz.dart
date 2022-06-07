import 'dart:async';

import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'result.dart';
import 'bibliotheek.dart' as lib;
import 'package:http/http.dart' as http;
import 'dart:convert';



class Quiz extends StatefulWidget {
  int totalScore = 0;

  Quiz(this.totalScore);

  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // int questionIndex = 0;
  int vraagTeller = 0;
  int timer = 10;
  late String resultText = " ";




  void initState() {
    startQuiz();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    if (vraagTeller==lib.questions.length) {
      return Result(widget.totalScore, resultText);
    } else {
      return Question(vraagTeller, verwerkAntwoord, timer);
    }

  }


  void startQuiz() async {
    try {
      var onlineInhoud = await http.get(Uri.parse(lib.vragenUrl));
      lib.questions = json.decode(onlineInhoud.body);
    } catch (error) {
      // print(error);
    }
    setState(() {
      vraagTeller = 0;
    });
  }

  void verwerkAntwoord(int score) {
    setState(() {
      vraagTeller++;
      timer= 10;
      widget.totalScore += score;
      print(widget.totalScore);

    });
  }
}
