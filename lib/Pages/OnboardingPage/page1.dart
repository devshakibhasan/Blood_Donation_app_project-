// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Center(
                child: Flexible(
                  child: Image(
                    image: AssetImage(
                      'assets/images/bro.png',
                    ),
                    height: 240.0,
                    width: 245.0,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Center(
                child: Text(
                  'Find Blood Donors',
                  style: TextStyle(
                    color: Color(0xff272A2F),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 18.0),
              Column(
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, ',
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  Text(
                    'consectetur adipiscing elit. Arcu ',
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  Text(
                    'tristique tristique quam in.',
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
