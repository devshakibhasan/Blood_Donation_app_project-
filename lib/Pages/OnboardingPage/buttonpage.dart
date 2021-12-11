import 'package:blood_fighter/Pages/Login/loginpage.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              alignment: Alignment.topRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Color(0xFFFF2156),
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF848992),
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Color(0xFF848992),
              ),
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text(
                    'Next',
                    style: TextStyle(
                      color: Color(0xFFFF2156),
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xFFFF2156),
                    size: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
