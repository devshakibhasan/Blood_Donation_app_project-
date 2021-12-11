import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Flexible(
                child: Image(
                  image: AssetImage(
                    'assets/images/rafiki.png',
                  ),
                  height: 230.0,
                  width: 340.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Center(
            // ignore: prefer_const_constructors
            child: Text(
              'Post A Blood Request',
              style: TextStyle(
                color: Color(0xff272A2F),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
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
    );
  }
}
