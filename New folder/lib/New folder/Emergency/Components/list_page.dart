import 'package:flutter/material.dart';

import 'blood_group_field.dart';
import 'hospital.dart';
import 'note.dart';
import 'logo.dart';
import 'number_field.dart';
import 'blood_type.dart';
import 'register_button.dart';
import 'titile_text.dart';
import 'city.dart';

class CardPage extends StatelessWidget {
  const CardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: null,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.02,
          ),
          City(),
          SizedBox(
            height: size.height * 0.02,
          ),
          Hospital(),
          SizedBox(
            height: size.height * 0.02,
          ),
          BloodType(),
          SizedBox(
            height: size.height * 0.02,
          ),
          Number_Field(),
          SizedBox(
            height: size.height * 0.02,
          ),
          AddNote(),
          SizedBox(
            height: size.height * 0.02,
          ),
          Register_Button(),
        ],
      ),
    );
  }
}
