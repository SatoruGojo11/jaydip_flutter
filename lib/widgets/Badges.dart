import 'package:badges/badges.dart' as badger;
import 'package:flutter/material.dart';
import 'package:jaydip_flutter/main.dart';

class BadgesApp extends StatefulWidget {
  const BadgesApp({super.key});

  @override
  State<BadgesApp> createState() => _BadgesAppState();
}

class _BadgesAppState extends State<BadgesApp> {
  var _selectedIndex = 0;
  int counter = 0;

  var mypages = [
    Center(
      child: Text('These is a Home Page'),
    ),
    Center(
      child: Text('These is a Cart Page'),
    ),
    Center(
      child: Text('These is a Account Page'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('Badge use', Colors.black87),
      body: Center(child: mypages[_selectedIndex]),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: badger.Badge(
              badgeContent: Text(
                '${counter}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              badgeAnimation: badger.BadgeAnimation.slide(),
              position: badger.BadgePosition.topEnd(),
              showBadge: counter == 0 ? false : true,
              child: Icon(Icons.shopping_basket_sharp),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
          ),
        ],
        backgroundColor: Colors.black38,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
