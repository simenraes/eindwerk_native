import 'dart:async';

import 'package:flutter/material.dart';
import 'answer.dart';
import 'bibliotheek.dart' as lib;
import 'quiz.dart';


class Question extends StatefulWidget {
  // final String questionText;
  int vraagNummer = 0;
  final Function verwerkAntwoord;
  int timer= 10;



  Question(this.vraagNummer, this.verwerkAntwoord, this.timer);
  @override
  _QuestionState createState() => _QuestionState();
}
class _QuestionState extends State<Question> {
  String showtimer = "10";
  bool canceltimer= false;
  int score = 0;


  @override
  void initState(){
    starttimer();
    super.initState();
  }

  void starttimer() async{
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      if (!mounted) return;
      setState(() {
        if(widget.timer<1){

          widget.verwerkAntwoord(score);
          widget.timer= 10;
        }
        else{
          widget.timer= widget.timer - 1;
        }
        showtimer = widget.timer.toString();


      });


    });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> header = <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 50),
            child: Container(
                child: Text(
                  lib.questions[widget.vraagNummer]['questionText'],
                  style: lib.kopTekst,
                  textAlign: TextAlign.center,
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  showtimer,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Times New Roman',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ];

    return ListView(children: [...header, ...maakAntwoordRijen()]);
  }

  List<Container> maakAntwoordRijen() {
    List<Container> rijen = <Container>[];
    int answerQuantity = (lib.questions[widget.vraagNummer]['answers'].length);

    for (int rij = 0; rij < answerQuantity; rij++) {
      List<Answer> knoppen = <Answer>[];
      knoppen.add(Answer(lib.questions[widget.vraagNummer]['answers'][rij]['text'], widget.verwerkAntwoord, lib.questions[widget.vraagNummer]['answers'][rij]['score']));

      rijen.add(Container(
        constraints: BoxConstraints(minWidth: 20, maxWidth: 50),
        width: 2,
        padding: EdgeInsets.all(10),
        child: Center(
          child: Row(
            children: knoppen,
          ),
        ),
      ));
    }

    return rijen;
  }

}
