import 'package:blood_fighter/Home/Components/slide.dart';
import 'package:flutter/material.dart';
import 'Components/grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textAlign;
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: Image.asset(
            "assets/icons/Group 17.png",
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: new Text("title"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/notification.png'),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 1,
        child: TabBarView(
          children: [
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        child: SliderPage(),
                      ),
                      Gridview(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Donation Request',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      ListTile(
                                        title: Text("Name"),
                                        subtitle: Text("Amir Hamza"),
                                        trailing: Image.asset(
                                          'assets/icons/Blood Group.png',
                                          height: 50.0,
                                        ),
                                      ),
                                      ListTile(
                                        title: Text("Location"),
                                        subtitle:
                                            Text("Hertford British Hospital"),
                                      ),
                                      ListTile(
                                        title: Text(
                                          "5 Min Ago",
                                          textAlign: TextAlign.left,
                                        ),
                                        trailing: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Donate",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 33, 86, 1),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
