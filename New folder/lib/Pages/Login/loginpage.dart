// ignore_for_file: prefer_const_constructors

import 'package:blood_fighter/Pages/Forgot%20Password/forgot_password.dart';
import 'package:blood_fighter/Pages/Register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/loginbutton.dart';
import 'Components/logo.dart';
import 'Components/password_field.dart';
import 'Components/titile_text.dart';
import 'Components/usename_field.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        controller: null,
        child: Column(
          children: <Widget>[
            Logo(), //logo
            SizedBox(
              height: 20.0,
            ),
            Title_Text(),
            SizedBox(
              height: 70.0,
            ),
            Username_Field(),
            SizedBox(
              height: size.height * 0.03,
            ),
            Password_Field(),
            SizedBox(
              height: size.height * 0.05,
            ),
            LoginButton(),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPass(),
                    ),
                  ),
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF2156),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100.0),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
               
                },
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Don’t have an account? ',
                      style: TextStyle(
                        color: Color(0xFF7E7E7E),
                        fontSize: 15.0,
                      ),

                      // ignore: prefer_const_literals_to_create_immutables
                      children: <TextSpan>[
                        TextSpan(
                          text: '  Register Now. ',
                          style: TextStyle(
                            color: Color(0xFFFF2156),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
