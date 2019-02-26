import 'package:flutter/material.dart';

class HomePromotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
              child: Text(
                'Week Promotion',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
            ),
          ]),
          Container(
            height: 140.0,
            child: ListView(
                scrollDirection: Axis.horizontal, children: promotionCards),
          )
        ],
      ),
    );
  }
}

List<PromotionCard> promotionCards = [
  PromotionCard('assets/images/promotion/laptop.png', 10),
  PromotionCard('assets/images/promotion/taplet.png', 20),
  PromotionCard('assets/images/promotion/car.png', 20),
  PromotionCard('assets/images/carousel_shoes1.jpg', 20),
];

class PromotionCard extends StatelessWidget {
  final String imagePath;
  final int discount;
  PromotionCard(this.imagePath, this.discount);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: <Color>[
              Colors.cyanAccent[400],
              Colors.purpleAccent[400]
            ])),
        height: 140,
        width: 140,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                imagePath,
                scale: 0.4,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              child: Text(
                'Discount ${discount}',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              padding: EdgeInsets.symmetric(vertical: 8.0),
            )
          ],
        ),
      ),
    );
  }
}
