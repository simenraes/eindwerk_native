import 'package:flutter/material.dart';
import '../bibliotheek.dart' as lib;
import 'package:audioplayers/audioplayers.dart';
import 'mailDialog.dart';





class Result extends StatefulWidget {
  int totalScore;

  Result(this.totalScore);





  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final AudioCache audioSpeler = AudioCache();


  @override
  void initState(){
    audioSpeler.play('audio/applause-2.mp3', volume: 1);
    super.initState();
  }

  Map<String, Object> get result {
    String resultText;
    Color textColor;
    Color background;
    String imageUrl;
    if (widget.totalScore <= 8) {
      resultText = 'You are gentle, pure, quiet and innocent';
      background = Colors.white;
      textColor = Colors.pink;
      imageUrl = "assets/images/baby3.png";
    } else if (widget.totalScore <= 12) {
      resultText = 'You are pretty likeable, joyful and alive!';
      background = Colors.orange;
      textColor = Colors.green;
      imageUrl = "assets/images/baby4.png";

    } else if (widget.totalScore <= 16) {
      resultText = 'You can be sometimes nervous, nasty or even strange';
      background = Colors.red;
      textColor = Colors.white;
      imageUrl = "assets/images/nervous.png";

    } else {
      resultText = 'You are wounded, violent, often angry, even sometimes dangerous or destructive';
      background = Colors.black;
      textColor = Colors.red;
      imageUrl = "assets/images/danger.png";

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
            Image.asset(result['imageurl'].toString(), width: 200, height: 160,),
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
            ),
            Container(
                height: 60,
                child: Center(
                  child: Text("Deel je uitslag", style: lib.kopTekst,),
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white
                  ),
                  child: Text('Versturen', style: lib.basisTekst, textScaleFactor: 1.2),
                  onPressed: () => {
                    showDialog(
                        context: context,
                        builder: (context) => MailDialoog()
                    )
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
