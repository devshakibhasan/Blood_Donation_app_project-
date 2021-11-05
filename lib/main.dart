// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'SplashScreen/splashscreen.dart';

void main() => runApp(const BloodDonationApp());

class BloodDonationApp extends StatelessWidget {
  const BloodDonationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Color.fromRGBO(255, 33, 86, 1),
            ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color.fromRGBO(255, 33, 86, 1),
          selectionColor: Color.fromRGBO(255, 33, 86, 1),
          selectionHandleColor: Color.fromRGBO(255, 33, 86, 1),
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 33, 86, 1),
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 33, 86, 1),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
