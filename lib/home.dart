import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class Home extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      body: AppTree(),
    ),
  );
}

class AppTree extends StatelessWidget {
  VideoPlayerController videoController = VideoPlayerController.network("https://boek.flutter.nl/geograaf.mp4");

  Widget build(BuildContext context) {
    videoController.initialize();
    videoController.play();
    return VideoPlayer(videoController);
  }
}