import 'package:flutter/material.dart';
import 'package:treva/RecmmendedApi.dart';
import 'package:treva/styles.dart';

class HomeRecommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Recommended',
                style: homeItemHeader,
              ),
            ],
          ),
          recommendedGrid(context)
        ],
      ),
    );
  }
}

Widget recommendedGrid(BuildContext context) {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, childAspectRatio: 0.56),
    itemCount: recommendedItems.length,
    primary: false,
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        child: recommendedGridItem(index, context),
      );
    },
  );
}

Widget recommendedGridItem(int index, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          Image.asset(
            recommendedItems[index].imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 180,
          ),
          GestureDetector(
              onTap: () {
                // onLinkTap(2);
              },
              child: details(index))
        ],
      ),
    ),
  );
}

Widget details(int index) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              recommendedItems[index].name,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 2),
          child: Row(
            children: <Widget>[
              Text(
                '${recommendedItems[index].price}',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    '4.8',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 14,
                  )
                ],
              ),
              Text(
                '932 Sale',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        )
      ],
    ),
  );
}
