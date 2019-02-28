import 'package:flutter/material.dart';
import 'package:treva/HomePage/HomeCarousel.dart';
import 'package:treva/HomePage/HomeCategory.dart';
import 'package:treva/HomePage/HomeMenu.dart';
import 'package:treva/HomePage/HomePromotion.dart';
import 'package:treva/HomePage/HomeRecommended.dart';
import 'package:treva/HomePage/HomeSale.dart';

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
