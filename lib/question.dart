import 'package:flutter/material.dart';
import '../bibliotheek.dart' as lib;
import 'answer.dart';

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: lib.tekstMarge),
                child: Text("vraag 1 van 5", style: lib.basisTekst,)
            ),
            Container(
              padding: EdgeInsets.only(right: lib.tekstMarge),
              child: Text("score: 10", style: lib.basisTekst,),
            )
          ],
        )
      ],
    );
  }
}