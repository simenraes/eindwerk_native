import 'package:flutter/material.dart';
import '../bibliotheek.dart' as lib;

class Answer extends StatefulWidget {
  final String antwoord;
  final Function verwerkAntwoord;
  int score= 0;






  Answer(this.antwoord, this.verwerkAntwoord, this.score);

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {

  @override
  Widget build(BuildContext context) {
    double knopBreedte = MediaQuery.of(context).size.width * 0.5 - lib.tekstMarge * 2;

    return Padding(
        padding: const EdgeInsets.all(lib.tekstMarge),


        child: GestureDetector(
          child: ConstrainedBox(
            constraints: BoxConstraints( minWidth: knopBreedte, maxWidth: knopBreedte),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),

                  border: Border.all(color: Colors.blue, width: 2)
              ),
              child: Center(
                  child: Text(widget.antwoord, textAlign: TextAlign.center, style: lib.basisTekst)
              ),
            ),
          ),
    onTap: () {
      widget.verwerkAntwoord(widget.score);
    }
        ),


    );
  }
}