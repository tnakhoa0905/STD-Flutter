import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/user_bloC.dart';

class Discover extends StatelessWidget {
  Discover({Key? key}) : super(key: key);
  final UserBloC _userBloC = UserBloC();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text('Discover')],
          ),
        ),
      ),
    ));
  }
}
