import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class MailDialoog extends StatelessWidget {
  final int totalscore;
  final TextEditingController tekstveldController = TextEditingController();


  MailDialoog(this.totalscore);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Voer jouw e-mailadres in'),
      content: TextField(
        controller: tekstveldController,

        decoration: InputDecoration(hintText: 'naam@domein.be'),),
      actions: [
        TextButton(
          child: Text('Annuleer'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: Text('Verstuur'),

          onPressed: () {
            print(tekstveldController.text);

            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}