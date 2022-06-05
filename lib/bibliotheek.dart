library bibliotheek;
import 'package:flutter/material.dart';

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

List<dynamic> questions = [
  {
    'questionText': 'What\'s your favorite color?',
    'answers': [
      {'text': 'Blue', 'score': 2, 'buttonColor': Colors.blue},
      {'text': 'Green', 'score': 3, 'buttonColor': Colors.green},
      {'text': 'Purple', 'score': 6, 'buttonColor': Colors.purple},
      {
        'text': 'Yellow',
        'score': 2,
        'buttonColor': Colors.yellow,
        'textColor': Colors.black
      },
      {'text': 'Red', 'score': 7, 'buttonColor': Colors.red},
      {
        'text': 'White',
        'score': 0,
        'buttonColor': Colors.white,
        'textColor': Colors.black
      },
      {'text': 'black', 'score': 10, 'buttonColor': Colors.black},
    ]
  },
  {
    'questionText': 'What\'s your favorite animal?',
    'answers': [
      {'text': 'spider', 'score': 10, 'buttonColor': Colors.black},
      {
        'text': 'rabbit',
        'score': 0,
        'buttonColor': Colors.grey,
      },
      {'text': 'snake', 'score': 10, 'buttonColor': Colors.red},
      {
        'text': 'swan',
        'score': 0,
        'buttonColor': Colors.white,
        'textColor': Colors.black
      },
      {
        'text': 'dog',
        'score': 4,
        'buttonColor': Colors.yellow,
        'textColor': Colors.black
      },
    ]
  },
  {
    'questionText': 'what\'s your favorite beverage?',
    'answers': [
      {
        'text': 'beer',
        'score': 8,
        'buttonColor': Colors.yellow,
        'textColor': Colors.black
      },
      {'text': 'whine', 'score': 7, 'buttonColor': Colors.red},
      {
        'text': 'tea',
        'score': 3,
        'buttonColor': Colors.grey,
      },
      {
        'text': 'milk',
        'score': 2,
        'buttonColor': Colors.white,
        'textColor': Colors.black
      },
      {'text': 'coffee', 'score': 5, 'buttonColor': Colors.black},
      {
        'text': 'water',
        'score': 0,
        'buttonColor': Colors.white,
        'textColor': Colors.black
      },
      {'text': 'vodka', 'score': 10, 'buttonColor': Colors.blue},
    ]
  }
];