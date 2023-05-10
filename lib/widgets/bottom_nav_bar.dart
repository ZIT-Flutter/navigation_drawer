import 'package:flutter/material.dart';

var bottomNavBarItems = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
  BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Page 2'),
  BottomNavigationBarItem(
      icon: Icon(Icons.heart_broken), label: 'Page 3'),
];


final nav_pages = <Widget>[
  Center(
    child: Icon(Icons.home, color: Colors.red, size: 50),
  ),
  Center(
    child: Icon(Icons.cloud, color: Colors.blue, size: 50),
  ),
  Center(
    child: Icon(Icons.heart_broken, color: Colors.green, size: 50),
  ),
];