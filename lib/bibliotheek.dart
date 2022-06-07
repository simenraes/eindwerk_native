library bibliotheek;
import 'package:flutter/material.dart';
import 'dart:async';


const double tekstMarge = 10.0;
const TextStyle basisTekst = TextStyle(
    fontFamily: 'Verdana',
    fontSize: 16
);
const TextStyle kopTekst = TextStyle(
    fontFamily: 'Verdana',
    fontSize: 18,
    fontWeight: FontWeight.bold
);

List<dynamic> questions = [];
const vragenUrl = 'https://simenraes.github.io/data/data.json';

StreamController<bool> startOpnieuw = StreamController<bool>();

bool geladen = false;



