import 'package:copid_tracker/ui/bantuan.dart';
import 'package:copid_tracker/ui/home.dart';
import 'package:copid_tracker/ui/stats.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
//State class
  int _pageIndex = 0;

  final Home _home = new Home();
  final Stats _stats = new Stats();
  final Bantuan _bantuan = new Bantuan();

  Widget _showPage = new Home();

  Widget _pageChooser(int page){
    switch (page) {
      case 0:
        return _home;
        break;
      case 1:
        return _stats;
        break;
      case 2:
      return _bantuan;
      break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'No Page Found'
            ),
          ),
        );
    }
  }
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          height: 48,
          color: Color.fromRGBO(49, 196, 146, 1),
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          items: <Widget>[
            Image.asset('assets/home.png', scale: 20),
            Image.asset('assets/stonk.png', scale: 20),
            Image.asset('assets/toa.png', scale: 20),
          ],
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _showPage,
            ),
          ),
        );
  }
}