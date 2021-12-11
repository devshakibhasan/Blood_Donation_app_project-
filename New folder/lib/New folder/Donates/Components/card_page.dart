import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      child: ListView.builder(
          itemCount: 60,
          itemBuilder: (context, i) {
            // if (numberTruthList[i]) {
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
                        subtitle: Text("Hertford British Hospital"),
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
                              color: Color.fromRGBO(255, 33, 86, 1),
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
          }
          // },
          ),
    );
  }
}
