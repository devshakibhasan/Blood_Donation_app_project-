import 'package:flutter/material.dart';

class Title_Text extends StatelessWidget {
  const Title_Text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'Dare ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFFF2156),
              fontSize: 20.0,
            ),

            // ignore: prefer_const_literals_to_create_immutables
            children: <TextSpan>[
              TextSpan(
                text: ' To ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              TextSpan(
                text: ' Donate',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF2156),
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
