import 'package:flutter/material.dart';

import 'Components/card_page.dart';
import 'Components/sliverappbarpage.dart';

class FindDonors extends StatefulWidget {
  const FindDonors({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FindDonors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarPage(),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CardPage(),
                // Container(
                //   height: 1000,
                //   color: Color.fromRGBO(255, 33, 86, 1),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
