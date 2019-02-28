import 'package:flutter/material.dart';
import 'package:treva/saleItem.dart';

class HomeSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Container(
          height: 360,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                // Colors.purple[200],
                Colors.indigo[200],
                Colors.cyanAccent[200],
              ])),
          child: ListView(
            controller: new ScrollController(keepScrollOffset: true),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45.0),
                child: Container(
                  width: 150,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_basket,
                        size: 36,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Flash',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 80.0),
                        child: Text(
                          'Sale',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Text(
                        'End Sale in:',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '23 : 59 : 36',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              listItems()
            ],
          )),
    );
  }
}

Widget listItems() {
  return ListView.builder(
    controller: new ScrollController(keepScrollOffset: true),
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: saleItems.length,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
          child: listItem(index));
    },
  );
}

Widget listItem(int index) {
  return Container(
    width: 150,
    height: 240,
    color: Colors.white,
    // alignment: MainAxisAlignment.center,
    child: Column(
      children: <Widget>[
        Image.asset(
          'assets/images/mobile.jpg',
          fit: BoxFit.cover,
          height: 130,
        ),
        description(index),
      ],
    ),
  );
}

Widget description(int index) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 6),
            child: Text(
              saleItems[index].itemName,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                '${saleItems[index].price}',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  '${saleItems[index].dPrice}',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.indigo[200]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Row(
              children: <Widget>[
                star(),
                star(),
                star(),
                star(),
                star(),
                Text('(56)')
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 3.0),
                child: Text(
                  'United Kingdom',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text(
                  '9 Available',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  height: 6,
                  width: 50,
                  color: Colors.orange,
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget star() {
  return Icon(
    Icons.star,
    size: 14,
    color: Colors.yellow,
  );
}
