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
  int timer= 30;
  String showtimer = "30";

  void initState() {
    startQuiz();
    super.initState();
  }
void starttimer() async{
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if(timer<1){
          t.cancel();
        }
        else{
          timer= timer - 1;
        }
        showtimer = timer.toString();


      });


    });
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