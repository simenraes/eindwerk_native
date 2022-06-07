import 'dart:async';

import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'result.dart';
import 'bibliotheek.dart' as lib;
import 'package:http/http.dart' as http;
import 'dart:convert';



class Quiz extends StatefulWidget {
  @override
  _QuizState createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // int questionIndex = 0;
  int vraagTeller = 0;


  void initState() {
    startQuiz();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    if (vraagTeller==lib.questions.length) {
      return Result();
    } else {
      return Question(vraagTeller);
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
}