import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:my_app/screens/login/login.dart';
import 'package:my_app/screens/register/register.dart';
import 'package:my_app/utilities/styles.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/screens/components/background.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 36.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFE0E0E0) : Color(0xFFFF2156),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFFffffff),
                Color(0xFFffffff),
                Color(0xFFffffff),
                Color(0xFFffffff),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: FlatButton(
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
                Container(
                  height: 400.0,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Flexible(
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/bro.png',
                                    ),
                                    height: 200.0,
                                    width: 300.0,
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Center(
                                child: Text(
                                  'Find Blood Donors',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Center(
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 10.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
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
                                    height: 200.0,
                                    width: 300.0,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Center(
                              child: Text(
                                'Post A Blood Request',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Center(
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Flexible(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/Logo (3).png',
                                  ),
                                  height: 200.0,
                                  width: 300.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Center(
                              child: Text(
                                'Dare To Donate',
                                style: TextStyle(
                                  color: Color(0xFFFF2156),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      'assets/images/Logo (3).png',
                      height: 100,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Dare ',
                          style: TextStyle(color: Color(0xFFFF2156)),
                          /*defining default style is optional */
                          children: <TextSpan>[
                            TextSpan(
                              text: ' To',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: ' Donate',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFF2156),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    alignment: Alignment.center,
                    margin:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    child: Text(
                      'You can donate for ones in need and request blood if you need.You can donate for ones in need and request blood if you need.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    color: Color(0xFFFFFFFF),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          80.0,
                        ),
                      ),
                      textColor: Color.fromRGBO(255, 33, 86, 1),
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.6,
                        decoration: new BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(255, 33, 86, 1),
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(
                            colors: [
                              Colors.white,
                              Colors.white,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "LOG IN",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    color: Color(0xFFFFFFFF),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.6,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(colors: [
                              Color.fromRGBO(255, 33, 86, 1),
                              Color.fromRGBO(255, 33, 86, 1)
                            ])),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "REGISTER",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Text(' '),
    );
  }
}
