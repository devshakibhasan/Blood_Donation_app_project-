
import 'package:blood_fighter/Pages/home/Grid/Campaign/Components/Donor.dart';
import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'Volunteer.dart';

class CampaignPage extends StatelessWidget {
  const CampaignPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'World Blood Donor Day 2021',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/map-pin.png',
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Dhaka',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Dhaka Medical College, Dhaka.'),
          SizedBox(
            height: 20.0,
          ),
          Gridview(),
          Row(
            children: [
              Volunteer(),
              Donors(),
            ],
          ),
        ],
      ),
    );
  }
}
