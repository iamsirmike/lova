import 'package:flutter/material.dart';
import 'package:lova/util/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.bg,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Spacer(),
            Container(
              margin: EdgeInsets.only(top: 40),
              height: MediaQuery.of(context).size.height * 0.4,
              child: SvgPicture.asset('assets/images/Layer2.svg'),
            ),
            Spacer(),
            Text(
              'I LOVE YOU 3000',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: UIColors.txtcolor1,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Love is more than a feeling. It is a commitment, an intentinal walk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: UIColors.txtcolor2,
                  fontSize: 18,
                ),
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text(
                  'Get started',
                  style: TextStyle(
                    color: UIColors.txtcolor1,
                    fontFamily: 'Nunito',
                    fontSize: 21,
                  ),
                ),
                color: UIColors.btncolor1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
