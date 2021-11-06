import 'package:blood_fighter/Campaign/Components/Donor.dart';
import 'package:blood_fighter/Campaign/campaign.dart';
import 'package:blood_fighter/Donates/donation.dart';
import 'package:blood_fighter/Emergency/emergency.dart';
import 'package:blood_fighter/Find%20Donors/find_donors.dart';
import 'package:blood_fighter/Reports/reports.dart';
import 'package:drawer_swipe/drawer_swipe.dart';
import 'package:flutter/material.dart';

import 'Components/body.dart';
import 'Components/grid_view.dart';
import 'Components/slide.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var drawerKey = GlobalKey<SwipeDrawerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add this line so you can add your appBar in Body
      extendBodyBehindAppBar: true,
      body: SwipeDrawer(
        radius: 20,
        key: drawerKey,

        hasClone: false,
        bodyBackgroundPeekSize: 40,

        backgroundColor: Colors.black,
        // pass drawer widget
        drawer: buildDrawer(),
        // pass body widget
        child: buildBody(),
      ),
    );
  }

  Widget buildDrawer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 4.0,
            color: Color.fromRGBO(255, 33, 86, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              leading: Image.asset(
                "assets/icons/home.png",
              ),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Color.fromRGBO(255, 33, 86, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FindDonors()));
              },
              title: Text(
                'Find Donors',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              leading: Image.asset('assets/icons/search_.png'),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Color.fromRGBO(255, 33, 86, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DonationBlood()));
              },
              title: Text(
                'Donates',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              leading: Image.asset('assets/icons/donates_.png'),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Color.fromRGBO(255, 33, 86, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Emergency()));
              },
              title: Text(
                'Emergency',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              leading: Image.asset('assets/icons/order_blood_.png'),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Color.fromRGBO(255, 33, 86, 1),
            child: ListTile(
              //  onTap: () {
              //   Navigator.push(
              //       context, MaterialPageRoute(builder: (context) => );
              // },
              title: Text(
                'Assistant',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              leading: Image.asset('assets/icons/assistant_.png'),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Color.fromRGBO(255, 33, 86, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Reports()));
              },
              title: Text(
                'Reports',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              leading: Image.asset('assets/icons/report_.png'),
            ),
          ),
          Card(
            elevation: 4.0,
            color: Color.fromRGBO(255, 33, 86, 1),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Campaign()));
              },
              title: Text(
                'Campaign',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              leading: Image.asset('assets/icons/campaign_.png'),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        // build your appBar
        AppBar(
          centerTitle: true,
          title: Text('Blood Fighter'),
          leading: InkWell(
            onTap: () {
              if (drawerKey.currentState!.isOpened()) {
                drawerKey.currentState!.closeDrawer();
              } else {
                drawerKey.currentState!.openDrawer();
              }
            },
            child: Image.asset(
              "assets/icons/Group 17.png",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/notification_.png'),
            ),
          ],
        ),
        // build your screen body
        Expanded(
          child: body(),
        ),
      ],
    );
  }
}
