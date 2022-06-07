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

class _QuizState extends State<Quiz> with AutomaticKeepAliveClientMixin {
  // int questionIndex = 0;
  int vraagTeller = 0;
  int timer = 10;
  late String resultText = " ";



  @override
  bool get wantKeepAlive {
    return true;
  }
  void initState() {
    startQuiz();
    lib.startOpnieuw.stream.listen((event) {
      setState(() {
        widget.totalScore = 0;
        vraagTeller = 0;
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    if (!lib.geladen || lib.questions.length==0) {
      String tekst = 'Loading...';
      if (lib.geladen) {
        tekst = 'No questions available';
      }
      return Container(
        child: Center(
          child: Text(
            tekst, style: lib.basisTekst, textAlign: TextAlign.center,),
        ),
      );
    }
    else if (vraagTeller==lib.questions.length) {
      return Result(widget.totalScore);
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
    lib.geladen = true;
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
