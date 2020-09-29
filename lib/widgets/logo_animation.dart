import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> decreaseSize;
  final Animation<EdgeInsets> slideLogo;
  final Animation<EdgeInsets> slideName;

  LogoAnimation({@required this.controller})
      : decreaseSize = Tween<double>(begin: 100, end: 50).animate(CurvedAnimation(parent: controller, curve: Interval(0.0, 0.5))),
        slideLogo = EdgeInsetsTween(
                begin: EdgeInsets.only(right: 0),
                end: EdgeInsets.only(right: 80))
            .animate(CurvedAnimation(parent: controller, curve: Interval(0.5, 0.8))),slideName = EdgeInsetsTween(
      begin: EdgeInsets.only(left: 50),
      end: EdgeInsets.only(left: 60))
      .animate(CurvedAnimation(parent: controller, curve: Interval(0.8, 1.0)));

  @override
  Widget build(BuildContext context) {
//    200  -60
    return Center(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Stack(
            children: <Widget>[
              Opacity(
                opacity: slideLogo.value == EdgeInsets.only(right: 80) ? 1.0 : 0.0,
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  margin: slideLogo.value == EdgeInsets.only(right: 80) ? slideName.value : EdgeInsets.only(left: 0),
                  child: Text('Luan',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                margin: slideLogo.value,
                height: decreaseSize.value,
                width: decreaseSize.value,
                child: Image.asset('images/nubanklogo.png'),
              ),
            ],
          );
        },
      ),
    );
  }
}
