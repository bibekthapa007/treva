import 'package:flutter/material.dart';
import 'package:treva/styles.dart';

class HomeRecommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Recommended',
            style: homeItemHeader,
          )
        ],
      ),
    );
  }
}
