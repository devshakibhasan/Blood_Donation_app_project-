import 'package:blood_fighter/Home/Components/slide.dart';
import 'package:flutter/material.dart';

import 'grid_view.dart';

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: TabBarView(
        children: [
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: SliderPage(),
                    ),
                    Gridview(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Donation Request',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 500,
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
                                            color:
                                                Color.fromRGBO(255, 33, 86, 1),
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
    );
  }
}
