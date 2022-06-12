import 'package:flutter/material.dart';
import 'package:hotel_app/screens/add_hotel.dart';
import 'package:hotel_app/screens/home_screen.dart';
import 'package:hotel_app/screens/hotel_detail.dart';
import 'package:hotel_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HotelDetail(),
    );
  }
}
