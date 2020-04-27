import 'package:flutter/material.dart';
import 'package:lova/util/colors.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.bg,
      body: SafeArea(
        child: Center(
          child: Container(
            child: RichText(
              text: TextSpan(
                text: 'L',
                style: TextStyle(fontSize: 35),
                children: <TextSpan>[
                  TextSpan(
                      text: 'O',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                  TextSpan(text: 'VA'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
