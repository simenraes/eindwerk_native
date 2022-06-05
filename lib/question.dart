import 'package:flutter/material.dart';
import 'answer.dart';
import 'bibliotheek.dart' as lib;
class Question extends StatelessWidget {

  // final String questionText;
  int vraagNummer = 0;



  Question(this.vraagNummer);

  @override
  Widget build(BuildContext context) {
    List<Widget> header = <Widget> [

      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 50),
              child: Container(
                  child: Text(lib.questions[vraagNummer]['questionText'], style: lib.kopTekst, textAlign: TextAlign.center,)
              ),
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Answer(lib.questions[vraagNummer]['answers'][0]['text'],

            ),

          ],
        ),

      ];

    return ListView(
    children: [...header, ...maakAntwoordRijen()]
    );
  }
  List<Row> maakAntwoordRijen() {
    List<Row> rijen = <Row>[];
    int answerQuantity = (lib.questions[vraagNummer]['answers'].length);

    for (int rij = 0; rij < answerQuantity; rij++) {
      List<Answer> knoppen = <Answer>[];
      knoppen.add(Answer(lib.questions[vraagNummer]['answers'][rij]['text']));


      rijen.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: knoppen
      ));
    }

    return rijen;
  }
}