import 'package:flutter/material.dart';

import 'dot.dart';

class DotAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<Offset> slideDot;
  final int currentIndex;

  DotAnimation({@required this.controller, @required this.currentIndex})
      : slideDot = Tween<Offset>(
                begin: const Offset(1.5, 0.0), end: Offset.zero)
            .animate(
                CurvedAnimation(parent: controller, curve: Curves.bounceInOut));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideDot,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Dot(color: currentIndex == 0 ? Colors.white : Colors.white24),
          Dot(color: currentIndex == 1 ? Colors.white : Colors.white24),
          Dot(color: currentIndex == 2 ? Colors.white : Colors.white24),
        ],
      ),
    );
  }
}
