import 'package:flutter/material.dart';
class Dot extends StatelessWidget {
  final Color color;
  Dot({@required this.color});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
