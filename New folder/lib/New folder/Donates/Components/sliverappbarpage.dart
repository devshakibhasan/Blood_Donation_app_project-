import 'package:flutter/material.dart';

class SliverAppBarPage extends StatelessWidget {
  const SliverAppBarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Colors.white,
      floating: true,
      pinned: true,
      snap: false,
      centerTitle: false,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Image.asset(
          "assets/icons/arrow.png",
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'Donation Request',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      bottom: AppBar(
        elevation: .0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Card(
          elevation: 2.0,
          child: Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Color.fromRGBO(255, 33, 86, 1),
                  hintText: 'Search for something',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Container(
            width: 60.0,
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromRGBO(255, 33, 86, 1),
            ),
            child: Image.asset(
              'assets/icons/scroll.png',
            ),
          ),
        ],
      ),
    );
  }
}
