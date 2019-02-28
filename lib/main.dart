import 'package:flutter/material.dart';
// import 'package:treva/CustomAppBar.dart';
import 'package:treva/AccountPage.dart';
import 'package:treva/BrandPage.dart';
import 'package:treva/CartPage.dart';
import 'package:treva/HomePage/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<BottomNavigationBarItem> bottomBarItems = [];
  _MyAppState() {
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      title: Text(
        "Home",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.shop,
      ),
      title: Text(
        "Brand",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_cart,
      ),
      title: Text(
        "Cart",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(
        Icons.account_box,
      ),
      title: Text(
        "Account",
        style: TextStyle(fontWeight: FontWeight.w600),
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

  void onLinkTap(int index) {
    setState(() => currentTab = index);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
          body: pages[currentTab],
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.blueAccent,
            currentIndex: currentTab,
            onTap: (int index) {
              setState(() => currentTab = index);
              print(currentTab);
            },
            items: bottomBarItems,
            type: BottomNavigationBarType.fixed,
          ),
        ));
  }
}
