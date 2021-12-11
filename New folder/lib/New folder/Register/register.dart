// import '../Login/loginpage.dart';

// import 'package:flutter/material.dart';

import 'Components/blood_group_field.dart';
// import 'Components/email_field.dart';
import 'Components/location_field.dart';
// import 'Components/logo.dart';
// import 'Components/number_field.dart';
// import 'Components/password_field.dart';
// import 'Components/register_button.dart';
// import 'Components/titile_text.dart';
// import 'Components/usename_field.dart';

// class RegisterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: SingleChildScrollView(
//         controller: null,
//         child: Column(
//           children: <Widget>[
//             Logo(),
//             SizedBox(
//               height: 10.0,
//             ),
//             Title_Text(),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             Username_Field(),
//             SizedBox(
//               height: size.height * 0.03,
//             ),
//             email_Field(),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             Password_Field(),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             Number_Field(),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             Blood_group_Field(),
//             SizedBox(
//               height: size.height * 0.02,
//             ),
//             Location_field(),
//              SizedBox(
//               height: size.height * 0.02,
//             ),
//             Register_Button(),
//             Container(
//               alignment: Alignment.center,
//               margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//               child: GestureDetector(
//                 onTap: () => {
//                   Navigator.pop(
//                     context,
//                   ),
//                 },
//                 child: RichText(
//                   text: TextSpan(
//                     text: 'Already have an account? ',
//                     style: TextStyle(color: Color(0xFF7E7E7E)),
//                     /*defining default style is optional */
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: ' Log In.',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFFFF2156),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors
import 'package:blood_fighter/Forgot%20Password/forgot_password.dart';
import 'package:blood_fighter/Register/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/Register_Button.dart';
import 'Components/logo.dart';
import 'Components/password_field.dart';
import 'Components/titile_text.dart';
import 'Components/usename_field.dart';

// ignore: use_key_in_widget_constructors
class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  height: 10.0,
                ),
                Title_Text(),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (val) =>
                      val!.isNotEmpty ? null : "Please enter user name",
                  // validator: (val) =>
                  //     val!.isNotEmpty ? null : "plesase enter a email addrees",
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      'assets/icons/user.png',
                    ),
                    hintText: "User Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
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
                  height: 10.0,
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
                  height: 10.0,
                ),
                TextFormField(
                  controller: _passController,
                  validator: (val) => val!.length < 11
                      ? "Enter your currect mobile number"
                      : null,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/icons/phone.png'),
                    hintText: "Mobile Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),
                Blood_group_Field(),
                SizedBox(
                  height: 10.0,
                ),
                Location_field(),
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  height: 10.0,
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
                      "REGISTER",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print("Email: ${_emailController.text}");
                      print("Email: ${_passController.text}");
                    }
                    // if (_formkey.currentState!.validate()) {
                    //   print('Email: ${_emailController.text}');
                    //   print('Email: ${_passController.text}');
                    // } // else {
                    // //   Navigator.push(
                    // //       context, MaterialPageRoute(builder: (context) => MyHomePage()));
                    // // }
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
                SizedBox(height: 40.0),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                  child: GestureDetector(
                    onTap: () => {},
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: RichText(
                        text: TextSpan(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <TextSpan>[
                            TextSpan(
                              text: 'already register? ',
                              style: TextStyle(
                                color: Color(0xFF7E7E7E),
                                fontSize: 15.0,
                              ),
                            ),
                            TextSpan(
                              text: '  login Now. ',
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
