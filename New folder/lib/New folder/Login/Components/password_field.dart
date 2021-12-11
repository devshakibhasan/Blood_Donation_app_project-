import 'package:flutter/material.dart';

class Password_Field extends StatefulWidget {
  const Password_Field({
    Key? key,
  }) : super(key: key);

  @override
  State<Password_Field> createState() => _Password_FieldState();
}

class _Password_FieldState extends State<Password_Field> {
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
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () {},
        child: TextFormField(
          controller: _passController,
          validator: (val) =>
              val!.length < 6 ? "Enter more than 6 digit pass" : null,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(255, 33, 86, 1),
              ),
            ),
            icon: Image.asset('assets/icons/lock.png'),
            labelText: "Password",
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(0xFFF8F8F8),
          ),
        ),
      ),
    );
  }
}
