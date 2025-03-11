import 'package:flutter/material.dart';
import 'package:hidable/hidable.dart';
import 'package:instagram/ui/Add.dart';
import 'package:instagram/ui/homepage.dart';
import 'package:instagram/ui/profile.dart';
import 'package:instagram/ui/reel.dart';
import 'package:instagram/ui/search.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // final colorsPath = [
  //   Colors.black,
  //   Colors.black,
  //   Colors.black,
  //   Colors.black,
  // ];

  int index = 0;
  final ScrollController scrollController = ScrollController();

  final List<Widget> pages = [
    Homepage(),
    Search(),
   Add(),
    Reel(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Hidable(
        controller: scrollController,
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) => setState(() => index = i),
          items: bottomBarItems(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomBarItems() {
    return [
      BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home, color: Colors.white),
          backgroundColor: Colors.black),
      BottomNavigationBarItem(
          label: 'search',
          icon: Icon(Icons.search, color: Colors.white),
          backgroundColor: Colors.black),
      BottomNavigationBarItem(
          label: 'Add',
          icon: Icon(Icons.add_box_outlined, color: Colors.white),
          backgroundColor: Colors.black),
      BottomNavigationBarItem(
          label: 'Reel',
          icon: Icon(Icons.video_library, color: Colors.white),
          backgroundColor: Colors.black),
      BottomNavigationBarItem(
          label: 'profle',
          
          icon: Icon(Icons.circle_outlined, color: Colors.white),
          backgroundColor: Colors.black),
    ];
  }
}
