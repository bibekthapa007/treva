import 'package:flutter/material.dart';

class CircleWithColor extends StatefulWidget {
  final Color customColor;
  CircleWithColor(this.customColor);
  @override
  _CircleWithColorState createState() => _CircleWithColorState();
}

class _CircleWithColorState extends State<CircleWithColor> {
  bool highlight = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, right: 12.0, bottom: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            highlight = !highlight;
          });
        },
        child: Container(
          alignment: Alignment.center,
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            border:
                new Border.all(color: highlight ? Colors.blue : Colors.grey),
            shape: BoxShape.circle,
            color: widget.customColor,
          ),
        ),
      ),
    );
  }
}
