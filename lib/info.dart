import 'package:flutter/material.dart';
import 'bibliotheek.dart' as lib;


class Info extends StatelessWidget {
  String test= "assets/images/flutter.png";
  @override
  Widget build(BuildContext context) {
    // return Container(color: Colors.yellow);
    return Image.asset(test,
      width: 50,
      height: 50,
      );

  }
}