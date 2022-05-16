import 'package:flutter/material.dart';
import 'package:social_network_app/screens/detail_whaton.dart';
import 'package:social_network_app/screens/home_screen.dart';

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
      theme: ThemeData(backgroundColor: Color.fromARGB(255, 134, 133, 133)),
      title: 'News App',
      home: const HomeScreen(),
    );
  }
}
