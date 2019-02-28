import 'package:flutter/material.dart';
import 'package:treva/HomeCarousel.dart';
import 'package:treva/HomeCategory.dart';
import 'package:treva/HomeMenu.dart';
import 'package:treva/HomePromotion.dart';
import 'package:treva/HomeRecommended.dart';
import 'package:treva/HomeSale.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HomeCarousel(),
          HomeMenu(),
          HomePromotion(),
          HomeSale(),
          HomeCategory(),
          HomeRecommended(),
        ],
      ),
    );
  }
}
