import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:treva/ui/CircleWithColor.dart';
import 'package:treva/ui/CircleWithText.dart';
import 'package:treva/styles.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        elevation: 0.0,
        title: Text(
          'Product Details',
          style:
              TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Icon(
            Icons.shopping_cart,
            color: Colors.grey,
          ),
          SizedBox(
            width: 4,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                productDetailsCarousel(),
                productDetailView(),
                productSize(),
                productColor()
              ]),
        ),
      ),
    );
  }
}

Widget productColor() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14.0, right: 14, left: 14),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Size',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Row(
          children: <Widget>[
            CircleWithColor(Colors.blueAccent),
            CircleWithColor(Colors.grey),
            CircleWithColor(Colors.white),
          ],
        ),
      ],
    ),
  );
}

Widget productSize() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14.0, right: 14, left: 14),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Size',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Row(
          children: <Widget>[
            CircleWithText('S'),
            CircleWithText('M'),
            CircleWithText('L'),
            CircleWithText('XL'),
          ],
        ),
      ],
    ),
  );
}

Widget productDetailView() {
  return Container(
    decoration: BoxDecoration(),
    padding: const EdgeInsets.all(12.0),
    child:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          'Arpenaz 4 Family Camping',
          style: productDetailHeader,
        ),
      ),
      Text(
        '200',
        style: productDetailHeader,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.green[300],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12),
                child: Row(
                  children: <Widget>[
                    Text(
                      '4.2',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Text(
              '892 Sale',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      )
    ]),
  );
}

Widget productDetailsCarousel() {
  return Container(
    height: 300,
    child: Carousel(
      images: [
        ExactAssetImage("assets/images/carousel_shoes.jpg"),
        NetworkImage(
            'https://images.pexels.com/photos/206560/pexels-photo-206560.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
        ExactAssetImage("assets/images/jacket.jpeg", scale: 0.8),
      ],
      boxFit: BoxFit.cover,
      dotSize: 6.0,
      dotSpacing: 18.0,
      dotColor: Colors.grey,
      indicatorBgPadding: 5.0,
      dotBgColor: Color(0x00000000),
      borderRadius: false,
      moveIndicatorFromBottom: 1.0,
      noRadiusForIndicator: true,
    ),
  );
}
