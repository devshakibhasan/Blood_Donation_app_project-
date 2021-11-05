import 'package:blood_fighter/Campaign/campaign.dart';
import 'package:blood_fighter/Donates/donation.dart';
import 'package:blood_fighter/Emergency/emergency.dart';
import 'package:blood_fighter/Find%20Donors/find_donors.dart';
import 'package:blood_fighter/Reports/reports.dart';
import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.0,
      child: GridView.count(
        shrinkWrap: true,
        primary: true,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        crossAxisCount: 1,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          GestureDetector(
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => FindDonors(),
            //     ),
            //   );
            // },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/campaign1.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
