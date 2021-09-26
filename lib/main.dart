import 'package:my_app/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/components/background.dart';
import 'package:my_app/screens/login/login.dart';
import 'package:my_app/screens/register/register.dart';

void main() async {
  runApp(BloodApp());
}

class BloodApp extends StatefulWidget {
  BloodApp({Key? key}) : super(key: key);

  @override
  _BloodAppState createState() => _BloodAppState();
}

class _BloodAppState extends State<BloodApp> {
  get seenOnboard => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class GoogleFonts {
  static manropeTextTheme(TextTheme textTheme) {}
}
