import 'package:flutter/material.dart';
import 'package:nubankclone/screens/home_screen.dart';
import 'package:nubankclone/widgets/logo_animation.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    Future.delayed(Duration(seconds: 1), () {
      _animationController.forward();

    });
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
//    timeDilation = 3;
    return Scaffold(
      body: LogoAnimation(controller: _animationController),
      backgroundColor: Color.fromRGBO(109, 33, 119, 1.0),
    );
  }
}
