import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;
  final String weight;
  IconContent(
      {@required this.text, @required this.icon, @required this.weight});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(15),
          child: Icon(icon, size: 70),
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 21,
                color: Color(0xFF8D8E98),
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            "$weight lbs",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
