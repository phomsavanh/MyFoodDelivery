import 'package:flutter/material.dart';
import 'package:food_delivery/screens/FavouritePage.dart';
import 'package:food_delivery/screens/HomePage.dart';
import 'package:food_delivery/screens/OrderPage.dart';
import 'package:food_delivery/screens/ProfilePage.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;
  Widget currentPage;
  List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      HomePage(),
      OrderPage(),
      FavouritePage(),
      ProfilePage(),
    ];
    currentPage = HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
            currentPage = pages[_currentIndex];
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Orders')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorite')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
      body: currentPage,
    );
  }
}
