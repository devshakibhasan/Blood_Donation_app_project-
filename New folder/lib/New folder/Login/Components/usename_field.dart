import 'package:flutter/material.dart';

class Username_Field extends StatefulWidget {
  const Username_Field({
    Key? key,
  }) : super(key: key);

  @override
  State<Username_Field> createState() => _Username_FieldState();
}

class _Username_FieldState extends State<Username_Field> {
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
          controller: _emailController,
          validator: (val) =>
              val!.isNotEmpty ? null : "plesase enter a email addrees",
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(255, 33, 86, 1),
              ),
            ),
            icon: Image.asset('assets/icons/mail.png'),
            labelText: "Username",
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
