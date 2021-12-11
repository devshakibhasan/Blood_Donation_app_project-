// import '../Login/loginpage.dart';

import 'package:flutter/material.dart';

import 'Components/blood_group_field.dart';
import 'Components/email_field.dart';
import 'Components/location_field.dart';
import 'Components/logo.dart';
import 'Components/number_field.dart';
import 'Components/password_field.dart';
import 'Components/register_button.dart';
import 'Components/titile_text.dart';
import 'Components/usename_field.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        controller: null,
        child: Column(
          children: <Widget>[
            Logo(),
            SizedBox(
              height: 10.0,
            ),
            Title_Text(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Username_Field(),
            SizedBox(
              height: size.height * 0.03,
            ),
            email_Field(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Password_Field(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Number_Field(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Blood_group_Field(),
            SizedBox(
              height: size.height * 0.02,
            ),
            Location_field(),
             SizedBox(
              height: size.height * 0.02,
            ),
            Register_Button(),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.pop(
                    context,
                  ),
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: Color(0xFF7E7E7E)),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Log In.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF2156),
                        ),
                      ),
                    ],
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
