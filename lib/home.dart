import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class Home extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      body: AppTree(),
      appBar: AppBar(title: Text("Video afspelen"),),
    ),
  );
}

class AppTree extends StatelessWidget {
  VideoPlayerController videoController = VideoPlayerController.asset("assets/video/quizintro.mp4");

  Widget build(BuildContext context) {
    videoController.initialize();
    videoController.play();
    return VideoPlayer(videoController);
  }
}