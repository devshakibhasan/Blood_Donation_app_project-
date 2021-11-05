import 'package:blood_fighter/Login/loginpage.dart';
import 'package:blood_fighter/Register/register.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              'assets/images/Logo (3).png',
              height: 125,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: 'Dare ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF2156),
                    fontSize: 20.0,
                  ),
                  /*defining default style is optional */
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
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Column(
              children: [
                Text(
                  'You can donate for ones in need and ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'request blood if you need.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            color: Color(0xFFFFFFFF),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
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
                width: widget.size.width * 0.6,
                decoration: new BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(255, 33, 86, 1),
                    width: 2.0,
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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: widget.size.height * 0.01),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            // ignore: prefer_const_constructors
            color: Color(0xFFFFFFFF),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterScreen()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0),
              ),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: widget.size.width * 0.6,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  gradient: new LinearGradient(
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: [
                      Color.fromRGBO(255, 33, 86, 1),
                      Color.fromRGBO(255, 33, 86, 1),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(0),
                child: Text(
                  "REGISTER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
