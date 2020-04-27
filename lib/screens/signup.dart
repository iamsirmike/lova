import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lova/components/buttons.dart';
import 'package:lova/util/colors.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.bg,
      body: Stack(
        children: <Widget>[
          // Spacer(),
         Container(
              margin: EdgeInsets.only(top: 70),
              height: MediaQuery.of(context).size.height * 0.4,
              child: SvgPicture.asset('assets/images/Layer3.svg'),
            ),
          Padding(
            padding: const EdgeInsets.only(top:250.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.63,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                          color: Color(0XFF433C3C),
                        ),
                      ),
                    ),
                    Spacer(),
                    Button(
                      color: Colors.white,
                      icon: FontAwesome.google,
                      iconcolor: Colors.red,
                      label: 'Connect with Google',
                    ),
                    SizedBox(height: 15),
                    Button(
                      color: Colors.white,
                      icon: FontAwesome.facebook,
                      iconcolor: Colors.blue,
                      label: 'Connect with Facebook',
                    ),
                    SizedBox(height: 15),
                    Text('Or'),
                    SizedBox(height: 15),
                    Button(
                      color: Color(0xffCC361B),
                      style: TextStyle(color: Colors.white),
                      icon: Icons.email,
                      iconcolor: Colors.white,
                      label: 'Connect with Email',
                      labelcolor: Colors.white,
                    ),
                    SizedBox(height: 15),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
