import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    this.color,
    this.style,
    this.icon,
    this.label,
    this.labelcolor,
    this.iconcolor,
  });
  final Color color;
  final TextStyle style;
  final IconData icon;
  final String label;
  final Color labelcolor;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Image.asset(
            //   'assets/images/email.png',
            //   width: 20,
            //   height: 20,
            // ),
            Icon(icon, color: iconcolor,),
            SizedBox(width: 30),
            Text(
              '$label',
              style: TextStyle(
                color: labelcolor,
                fontFamily: 'Nunito',
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}