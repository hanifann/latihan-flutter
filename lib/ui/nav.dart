import 'package:copid_tracker/ui/bantuan.dart';
import 'package:copid_tracker/ui/coba.dart';
import 'package:copid_tracker/ui/home.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {

  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Coba(),
    Bantuan()
  ];

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Color.fromRGBO(50, 196, 146, 1),
          selectedItemBackgroundColor: Color.fromRGBO(50, 196, 146, 1),
          selectedItemBorderColor: Colors.white,
          unselectedItemIconColor: Colors.white,
          unselectedItemLabelColor: Colors.white,
          selectedItemLabelColor: Colors.white
        ),
        selectedIndex: _currentIndex,
        onSelectTab: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.trending_up,
            label: 'Tracker',
          ),
          FFNavigationBarItem(
            iconData: Icons.help,
            label: 'Help',
          )
        ],
      )
    );
  }
}