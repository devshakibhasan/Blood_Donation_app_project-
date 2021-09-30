import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hompage extends StatelessWidget {
  Hompage({Key? key}) : super(key: key);

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
      body: Container(
        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 260.0,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset(
                      "assets/images/Rectangle 13.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/Rectangle 13.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/Rectangle 13.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/Rectangle 13.png",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/Rectangle 13.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                  dotSize: 10.0,
                  dotSpacing: 20.0,
                  dotColor: Color(0xffff0022),
                  indicatorBgPadding: 5.0,
                  dotVerticalPadding: 5.0,
                  dotBgColor: Colors.transparent,
                  dotIncreasedColor: Color(0xFFE0E0E0),
                  borderRadius: true,
                ),
              ),
            ),

//fksdkfsdfkaksdfkkadsfkasdkf

            Expanded(
              child: Container(
                child: GridView.count(
                  shrinkWrap: true,
                  primary: true,
                  padding: const EdgeInsets.all(20.0),
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/search.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Find Donors'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/donors.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Donates'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/order_blood.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Order Bloods'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/assistant.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Assistant'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/report.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Report'),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/campaign.png'),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Campaign'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),
            Text(
              'Donation Request',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Name"),
                        subtitle: Text("Amir Hamza"),
                        trailing: Image.asset(
                          'assets/icons/Blood Group.png',
                          height: 100.0,
                        ),
                      ),
                      ListTile(
                        title: Text("Location"),
                        subtitle: Text("Hertford British Hospital"),
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Text(
                              "5 Min Ago",
                              textAlign: TextAlign.left,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Donate",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 33, 86, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Name"),
                        subtitle: Text("Amir Hamza"),
                        trailing: Image.asset(
                          'assets/icons/Blood Group.png',
                          height: 100.0,
                        ),
                      ),
                      ListTile(
                        title: Text("Location"),
                        subtitle: Text("Hertford British Hospital"),
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Text(
                              "5 Min Ago",
                              textAlign: TextAlign.left,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Donate",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 33, 86, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Name"),
                        subtitle: Text("Amir Hamza"),
                        trailing: Image.asset(
                          'assets/icons/Blood Group.png',
                          height: 100.0,
                        ),
                      ),
                      ListTile(
                        title: Text("Location"),
                        subtitle: Text("Hertford British Hospital"),
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Text(
                              "5 Min Ago",
                              textAlign: TextAlign.left,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Donate",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 33, 86, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Name"),
                        subtitle: Text("Amir Hamza"),
                        trailing: Image.asset(
                          'assets/icons/Blood Group.png',
                          height: 100.0,
                        ),
                      ),
                      ListTile(
                        title: Text("Location"),
                        subtitle: Text("Hertford British Hospital"),
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Text(
                              "5 Min Ago",
                              textAlign: TextAlign.left,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Donate",
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 33, 86, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
