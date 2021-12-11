import 'package:flutter/material.dart';

class Donors extends StatelessWidget {
  const Donors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: ElevatedButton(
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          width: 80.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              // ignore: prefer_const_literals_to_create_immutables
              gradient: LinearGradient(colors: [
                Color.fromRGBO(255, 33, 86, 1),
                Color.fromRGBO(255, 33, 86, 1)
              ])),
          padding: const EdgeInsets.all(0),
          child: Text(
            "Apply Donor",
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
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    );
  }
}
