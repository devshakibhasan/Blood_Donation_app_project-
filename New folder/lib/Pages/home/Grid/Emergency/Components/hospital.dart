import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
  const Hospital({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: () {},
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(255, 33, 86, 1),
              ),
            ),
            icon: Image.asset('assets/icons/hospital.png'),
            labelText: "Hospital",
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
