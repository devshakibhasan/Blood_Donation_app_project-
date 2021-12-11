import 'package:flutter/material.dart';
import 'Components/campaign_page.dart';
import 'Components/sliverappbarpage.dart';

class Campaign extends StatefulWidget {
  const Campaign({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Campaign> {
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
                CampaignPage(),
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
