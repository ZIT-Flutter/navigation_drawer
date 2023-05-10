import 'package:flutter/material.dart';
import 'package:navigation_drawer/widgets/bottom_nav_bar.dart';
import 'package:navigation_drawer/widgets/drawer_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      body: nav_pages[currentPageIndex],
      drawer: Drawer(
        child: drawerItemNew(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavBarItems,
        backgroundColor: Colors.yellow,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.cyan,
      ),
    );
  }
}
