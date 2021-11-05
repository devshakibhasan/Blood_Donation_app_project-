import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'loginbutton.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/map-pin.png',
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Reseach Center',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Dhaka Medical College, Dhaka.'),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              height: 250.0,
              child: Image.asset(
                'assets/images/test_tube.png',
              ),
            ),
          ),
          Gridview(),
          LoginButton(),
        ],
      ),
    );
  }
}
