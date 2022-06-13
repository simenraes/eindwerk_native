import 'package:flutter/material.dart';
import 'home.dart';
import 'quiz.dart';
import 'info.dart';
import 'bibliotheek.dart' as lib;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatelessWidget {
  int totalScore = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Simen's quiz "),
              backgroundColor: Colors.black,
            ),
            bottomNavigationBar: TabBar(

                indicatorColor: Colors.red,
                labelColor: Colors.red,
                tabs: [
                  Tab(icon:Icon(Icons.home), text:"welkom") ,
                  Tab(icon:Icon(Icons.live_help), text:"QUIZ!"),
                  Tab(icon:Icon(Icons.info), text:"over deze app"),
                ]
            ),
            body: TabBarView(
              children: [
                Home(),
                Quiz(totalScore),
                Info()
              ],
            )
        )
    );
  }
}