

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:animations/animations.dart';

class AnimationClass extends StatefulWidget {
  @override
  _AnimationClassState createState() => _AnimationClassState();
}

class _AnimationClassState extends State<AnimationClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Page"),
      ),
      body: Center(
        child: Text('This is Home Page'),
      ),
      floatingActionButton: OpenContainer(
        transitionDuration: Duration(seconds: 3),
        closedBuilder: (context, openWidget) {
          return FloatingActionButton(
            onPressed: openWidget,
          );
        },
        openBuilder: (context, closeWidget) {
          return AnimPagehere();
        },
      ),
    );
  }
}

class AnimPagehere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneme"),
      ),
      body: Center(
        child: Text("deneme"),
      ),
    );
  }
}
