import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Container(
            // height: 400,
            child: Column(
              children: <Widget>[
                Text('Hello'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text("Hello"), Text("World")],
                )
              ],
            ),
          ),
        ),
      ),
    ));
