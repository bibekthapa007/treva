import 'package:flutter/material.dart';
import 'package:treva/HomeCarousel.dart';
import 'package:treva/HomeCategory.dart';
import 'package:treva/HomeMenu.dart';
import 'package:treva/HomePromotion.dart';
import 'package:treva/HomeRecommended.dart';
import 'package:treva/HomeSale.dart';

class HomePage extends StatelessWidget {
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
