import 'package:flutter/material.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
class SliderPage extends StatelessWidget {
  const SliderPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: Container(
        child: SizedBox(
          height: 170.0,
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
    );
  }
}
