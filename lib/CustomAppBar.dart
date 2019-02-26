import 'package:flutter/material.dart';
import 'package:treva/AccountPage.dart';
import 'package:treva/BrandPage.dart';
import 'package:treva/CartPage.dart';
import 'package:treva/HomePage.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  _CustomAppBarState() {
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.grey,
      ),
      title: Text(
        "Home",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
      ),
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.shop,
        color: Colors.grey,
      ),
      title: Text(
        "Brand",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
      ),
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_cart,
        color: Colors.grey,
      ),
      title: Text(
        "Cart",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
      ),
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.account_box,
        color: Colors.grey,
      ),
      title: Text(
        "Account",
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
      ),
    ));
  }

  int currentTab = 0;
  HomePage homePage;
  BrandPage brandPage;
  CartPage cartPage;
  AccountPage accountPage;
  Widget currentPage;

  List<Widget> pages;
  @override
  void initState() {
    homePage = HomePage();
    brandPage = BrandPage();
    cartPage = CartPage();
    accountPage = AccountPage();
    pages = [homePage, brandPage, cartPage, accountPage];
    currentPage = homePage;
    super.initState();
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTab,
      onTap: (int index) {
        setState(() => currentTab = index);
      },
      items: bottomBarItems,
      type: BottomNavigationBarType.fixed,
    );
  }
}
