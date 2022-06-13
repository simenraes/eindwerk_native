import 'package:flutter/material.dart';
import '../bibliotheek.dart' as lib;


import 'package:flutter/material.dart';

class Result extends StatelessWidget {
   int totalScore;
   // String resultText;
  // final Function restartQuiz;
  Result(this.totalScore);

  Map<String, Object> get result {
    String resultText;
    Color textColor;
    Color background;
    String imageUrl;
    if (totalScore <= 8) {
      resultText = 'You are gentle, pure, quiet and innocent';
      background = Colors.white;
      textColor = Colors.pink;
      imageUrl = "assets/images/innocent baby.webp";
    } else if (totalScore <= 12) {
      resultText = 'You are pretty likeable, joyful and alive!';
      background = Colors.orange;
      textColor = Colors.green;
      imageUrl = "assets/images/gentle baby.jfif";

    } else if (totalScore <= 16) {
      resultText = 'You can be sometimes nervous, nasty or even strange';
      background = Colors.red;
      textColor = Colors.white;
      imageUrl = "assets/images/flutter.png";

    } else {
      resultText = 'You are wounded, violent, often angry, even sometimes dangerous or destructive';
      background = Colors.black;
      textColor = Colors.red;
      imageUrl = "assets/images/flutter.png";

    }
    return {'text': resultText, 'textColor': textColor, 'background': background, 'imageurl': imageUrl};
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // alignment: Alignment.center,

        color: Colors.yellow,
        width: double.infinity,
        padding: EdgeInsets.all(50),
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(result['imageurl'].toString(), width: 100, height: 80,),
            Text(
              result['text'].toString(),
              style: const TextStyle(
                  fontSize: 36,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                child: const Text('Opnieuw', style: lib.basisTekst, textScaleFactor: 1.2),
                onPressed: () => lib.startOpnieuw.add(true),
              ),
            )
          ],
        ),
      ),
    );
  }
}
