import 'package:blood_fighter/Finish%20Screen/finish.dart';
import 'package:blood_fighter/Home/home.dart';
import 'package:blood_fighter/Home/myhomepage.dart';
import 'package:blood_fighter/OTP/otp.dart';
import 'package:flutter/material.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ElevatedButton(
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              // ignore: prefer_const_literals_to_create_immutables
              gradient: LinearGradient(colors: [
                Color.fromRGBO(255, 33, 86, 1),
                Color.fromRGBO(255, 33, 86, 1)
              ])),
          padding: const EdgeInsets.all(0),
          child: Text(
            "Finish",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFF2156)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(80.0),
              side: BorderSide(
                color: Color(0xFFFF2156),
              ),
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ),
          );
        },
      ),
    );
  }
}
