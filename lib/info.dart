import 'package:flutter/material.dart';
import 'bibliotheek.dart' as lib;


class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    super.initState();
  }

  // Dispose the controller
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: GestureDetector(
            onTap: () {
              if (_isPlay == false) {
                _controller.forward();
                _isPlay = true;
              } else {
                _controller.reverse();
                _isPlay = false;
              }
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: _controller,
              size: 200,
              color: Colors.blue,
            ),
          ),
        ));
  }
}