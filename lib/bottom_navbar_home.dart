import 'package:flutter/material.dart';
import 'package:foodxa/Home.dart';
import 'package:foodxa/cart.dart';
import 'package:foodxa/categories.dart';
import 'package:foodxa/favourite.dart';
import 'package:foodxa/profile.dart';

class MyBottomNavbarHome extends StatefulWidget {
  const MyBottomNavbarHome({Key? key}) : super(key: key);

  @override
  State<MyBottomNavbarHome> createState() => _MyBottomNavbarHomeState();
}

class _MyBottomNavbarHomeState extends State<MyBottomNavbarHome> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Ktabpages = [
      const MyHome(),
      const MyCart(),
      const MyFavourite(),
      const MyCategories(),
      const MyProfile(),
    ];
    final kBottomNavbarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
      const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.category), label: ''),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
    ];
    assert(Ktabpages.length == kBottomNavbarItems.length);
    // ignore: non_constant_identifier_names
    final BottomNavBar = BottomNavigationBar(
      items: kBottomNavbarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: Ktabpages[_currentTabIndex],
      bottomNavigationBar: BottomNavBar,
    );
  }
}
