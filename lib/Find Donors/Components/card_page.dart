import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      child: ListView.builder(
          itemCount: 60,
          itemBuilder: (context, i) {
            // if (numberTruthList[i]) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/User/user1.png',
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Yasin Hossain",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 40.0),
                            child: Image.asset(
                              'assets/icons/map-pin.png',
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Mohammedpur, Dhaka',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      'assets/icons/A+.png',
                    ),
                  ),
                ],
              ),
            );
          }
          // },
          ),
    );
  }
}
