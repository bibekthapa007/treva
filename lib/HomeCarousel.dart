import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200.0,
        child: Carousel(
          images: [
            ExactAssetImage("assets/images/carousel_shoes.jpg"),
            ExactAssetImage("assets/images/carousel_shoes1.jpg", scale: 1.2),
          ],
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.lightBlueAccent,
          indicatorBgPadding: 5.0,
          dotBgColor: Color(0x00000000),
          borderRadius: false,
          moveIndicatorFromBottom: 18.0,
          noRadiusForIndicator: true,
          overlayShadow: true,
          overlayShadowColors: Colors.white,
          overlayShadowSize: 0.7,
        ));
  }
}
