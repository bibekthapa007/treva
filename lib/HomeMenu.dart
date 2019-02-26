import 'package:flutter/material.dart';
import 'package:treva/Items.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Text(
              'Menu',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.start,
            ),
          ]),
          menuGridView()
        ],
      ),
    );
  }
}

Widget menuGridView() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
    itemCount: menuItems.length,
    primary: false,
    controller: new ScrollController(keepScrollOffset: true),
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        child: menuGridItem(index),
      );
    },
  );
}

Widget menuGridItem(int index) {
  return Container(
    child: Column(
      children: <Widget>[
        menuItems[index].itemIcon,
        Text(menuItems[index].itemName)
      ],
    ),
  );
}
