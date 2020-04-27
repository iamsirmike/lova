import 'package:flutter/material.dart';
import 'package:lova/screens/home.dart';
import 'package:lova/screens/signup.dart';
import 'package:lova/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Splash(),
      routes: {
        '/home': (context) => Home(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
