import 'package:flutter/material.dart';

class Items {
  String itemName;
  Icon itemIcon;
  Items.element({this.itemName, this.itemIcon});
}

List<Items> menuItems = [
  Items.element(itemName: 'Camera', itemIcon: Icon(Icons.camera)),
  Items.element(itemName: 'Camera', itemIcon: Icon(Icons.camera)),
  Items.element(itemName: 'Camera', itemIcon: Icon(Icons.camera)),
  Items.element(itemName: 'Camera', itemIcon: Icon(Icons.camera)),
  Items.element(itemName: 'Camera', itemIcon: Icon(Icons.camera)),
  Items.element(itemName: 'Camera', itemIcon: Icon(Icons.camera)),
  Items.element(itemName: 'Camera', itemIcon: Icon(Icons.camera)),
];
