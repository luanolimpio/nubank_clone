import 'package:flutter/material.dart';
import 'package:nubankclone/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank clone',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
