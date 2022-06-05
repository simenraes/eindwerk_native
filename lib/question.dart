import 'package:flutter/material.dart';
import 'answer.dart';
import 'bibliotheek.dart' as lib;
class Question extends StatelessWidget {

  final String questionText;


  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 50),
              child: Container(
                  child: Text(lib.questions[0]['questionText'], style: lib.kopTekst, textAlign: TextAlign.center,)
              ),
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Answer(),

          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: <Widget>[
        //     Answer(),
        //     Answer()
        //   ],
        // )
      ],

    );
  }
}