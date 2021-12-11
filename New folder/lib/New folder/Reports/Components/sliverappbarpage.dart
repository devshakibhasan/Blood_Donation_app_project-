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
        'Reports',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
