import 'package:flutter/material.dart';
import 'package:rumahinternet/bottombar/dashboard.dart';
import 'package:rumahinternet/bottombar/payment.dart';
import 'package:rumahinternet/bottombar/profile.dart';

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    Payment(),
    Profile()
  ];

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
  }

@override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text(
        'RUMAH INTERNET',
        style: TextStyle(
          fontSize: 24, 
          fontFamily: "Stanberry"
        ),
      ),
    ),
    body: _children[_currentIndex], // new
    bottomNavigationBar: BottomNavigationBar(
      onTap: onTabTapped, // new
      currentIndex: _currentIndex, // new
      items: [
        new BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Dashboard',
            style: TextStyle(
              fontFamily: "Stanberry",
              fontSize: 15
            ),
          ),
        ),
        new BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          title: Text(
            'Payment',
            style: TextStyle(
              fontFamily: "Stanberry",
              fontSize: 15
            ),
          ),
        ),
        new BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text(
            'Profile',
            style: TextStyle(
              fontFamily: "Stanberry",
              fontSize: 15
              ),
            ),
          ),
        ],
      ),
    );
  }
}