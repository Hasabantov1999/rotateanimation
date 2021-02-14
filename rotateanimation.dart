import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class AnimationClass extends StatefulWidget {
  @override
  _AnimationClassState createState() => _AnimationClassState();
}

class _AnimationClassState extends State<AnimationClass>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {},
            child: Text(
              "Başlat",
            ),
          ),
          SizedBox(
            height: 60,
          ),
          AnimatedBuilder(
            animation: _controller.view,
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 2 * pi,
                child: child,
              );
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.lightBlue[200],
              child: Center(
                child: Text("Animations"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
