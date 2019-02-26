import 'package:flutter/material.dart';
import 'package:treva/CustomAppBar.dart';
import 'package:treva/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
              ),
              child: Container(
                // color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    Text("Terva Shop"),
                  ],
                ),
              ),
            ),
            actions: <Widget>[Icon(Icons.message), Icon(Icons.notifications)],
          ),
          body: HomePage(),
          bottomNavigationBar: CustomAppBar(),
        ));
  }
}
