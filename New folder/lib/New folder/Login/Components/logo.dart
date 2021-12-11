import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: Container(
        alignment: Alignment.topCenter,
        // margin: EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(
          'assets/images/Logo (3).png',
          height: 68,
        ),
      ),
    );
  }
}
