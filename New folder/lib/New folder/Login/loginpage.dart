// ignore_for_file: prefer_const_constructors
import 'package:blood_fighter/Forgot%20Password/forgot_password.dart';
import 'package:blood_fighter/Home/myhomepage.dart';
import 'package:blood_fighter/Register/register.dart';
import 'package:firebase_core/firebase_core.dart';
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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        controller: null,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: _formkey,
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
                TextFormField(
                  controller: _emailController,
                  validator: (val) =>
                      val!.isNotEmpty ? null : "Please enter a email address",
                  // validator: (val) =>
                  //     val!.isNotEmpty ? null : "plesase enter a email addrees",
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/icons/mail.png'),
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _passController,
                  validator: (val) => val!.length < 6
                      ? "Enter more than 6 digit charecter"
                      : null,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/icons/lock.png'),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),
                MaterialButton(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(255, 33, 86, 1),
                          Color.fromRGBO(255, 33, 86, 1)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "LOG IN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print("Email: ${_emailController.text}");
                      print("password: ${_passController.text}");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    }
                  },
                ),
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
                  margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                  child: GestureDetector(
                    onTap: () => {},
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: RichText(
                        text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Don’t have an account? ',
                              style: TextStyle(
                                color: Color(0xFF7E7E7E),
                                fontSize: 15.0,
                              ),
                            ),
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
        ),
      ),
    );
  }
}
