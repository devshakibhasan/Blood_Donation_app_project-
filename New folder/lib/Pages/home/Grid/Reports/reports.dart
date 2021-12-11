import 'package:flutter/material.dart';

import 'Components/report_page.dart';
import 'Components/sliverappbarpage.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Reports> {
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
                ReportsPage(),
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
