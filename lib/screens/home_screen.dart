import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/hotel_bloC.dart';
import 'package:hotel_app/bloC/user_bloC.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/models/user.dart' as model;

import 'package:hotel_app/screens/add_hotel.dart';
import 'package:hotel_app/screens/book_mark_screen.dart';
import 'package:hotel_app/screens/discover_screen.dart';
import 'package:hotel_app/screens/home_page.dart';
import 'package:hotel_app/screens/prolife_screen.dart';
import 'package:hotel_app/widgets/hotel_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final items = [HomePage(), Discover(), BookMark(), Prolife()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 251, 255),
      body: items[currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(context),
    ));
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue.shade400,
        unselectedItemColor: Colors.grey,
        iconSize: 24,
        selectedIconTheme: IconThemeData(
          size: 28,
          color: Colors.blue.shade400,
        ),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedFontSize: 16,
        unselectedFontSize: 12,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
              currentIndex = index;
            }),
        items: const [
          BottomNavigationBarItem(
              activeIcon: Image(
                  image: AssetImage('assets/image/home_page/home_active.png')),
              icon: Padding(
                padding: EdgeInsets.all(3),
                child:
                    Image(image: AssetImage('assets/image/home_page/home.png')),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Image(
                  image: AssetImage(
                      'assets/image/home_page/discovery_active.png')),
              icon: Padding(
                padding: EdgeInsets.all(3),
                child: Image(
                    image: AssetImage('assets/image/home_page/discovery.png')),
              ),
              label: 'Discover'),
          BottomNavigationBarItem(
              activeIcon: Image(
                  image: AssetImage(
                      'assets/image/home_page/book_mark_active.png')),
              icon: Padding(
                padding: EdgeInsets.all(3),
                child: Image(
                    image: AssetImage('assets/image/home_page/book_mark.png')),
              ),
              label: 'Bookmark'),
          BottomNavigationBarItem(
              activeIcon: Image(
                  image:
                      AssetImage('assets/image/home_page/prolife_active.png')),
              icon: Padding(
                padding: EdgeInsets.all(3),
                child: Image(
                    image: AssetImage('assets/image/home_page/prolife.png')),
              ),
              label: 'Profile'),
        ]);
  }
}
