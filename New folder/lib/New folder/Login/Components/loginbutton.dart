import 'package:blood_fighter/Home/myhomepage.dart';
import 'package:blood_fighter/Home/home.dart';

import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  late TextEditingController _emailController;
  late TextEditingController _passController;
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    _emailController = TextEditingController();
    _passController = TextEditingController();

    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
            "LOG IN",
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
          if (_formkey.currentState!.validate()) {
            print('Email: ${_emailController.text}');
            print('Email: ${_passController.text}');
          } // else {
          //   Navigator.push(
          //       context, MaterialPageRoute(builder: (context) => MyHomePage()));
          // }
        },
      ),
    );
  }
}
