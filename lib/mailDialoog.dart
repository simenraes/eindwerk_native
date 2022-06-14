import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class MailDialoog extends StatelessWidget {
  final int totalscore;
  final TextEditingController tekstveldController = TextEditingController();

  MailDialoog(this.totalscore);

  stuurMail() async {
    const String gebruikersnaam = 'simieraes@hotmail.com';
    const String paswoord = 'zwartalalasus1';

    final smtpServer = SmtpServer("smtp.office365.com",
        port: 587,
        allowInsecure: true,
        ignoreBadCertificate: true,
        username: gebruikersnaam,
        password: paswoord
    );

    final message = Message();
    message.from = Address(gebruikersnaam, 'Flutter Quiz');
    message.recipients.add(tekstveldController.text);
    message.subject = 'Uitslag van de quiz';
    message.html = "<h1>Uitslag</h1>\n" + "<p>Je score is $totalscore</p>";

    try {
      await send(message, smtpServer);
      print('Succesvol verzonden');
    } catch(error) {
      print(error);
      print('niegegegegegloekt');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Voer jouw e-mailadres in'),
      content: TextField(
        controller: tekstveldController,
        decoration: InputDecoration(hintText: 'naam@domein.be'),
      ),
      actions: [

        TextButton(
          child: Text('Verstuur'),
          onPressed: () {
            print(tekstveldController.text);
            stuurMail();
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}


