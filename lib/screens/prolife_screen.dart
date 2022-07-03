import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/user_bloC.dart';
import '../models/user.dart' as model;

class Prolife extends StatelessWidget {
  Prolife({Key? key}) : super(key: key);
  final UserBloC _userBloC = UserBloC();

  @override
  Widget build(BuildContext context) {
    User _auth = FirebaseAuth.instance.currentUser!;
    return SafeArea(
        child: Scaffold(
            body: Container(
      margin: const EdgeInsets.all(32),
      child: SingleChildScrollView(
          child: FutureBuilder<model.User>(
        future: _userBloC.getUser(_auth.uid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            model.User? user = snapshot.data;
            return Container(
                margin: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(user!.avt),
                    ),
                    Text(user.name)
                  ],
                ));
          }
          return const CircularProgressIndicator();
        },
      )),
    )));
  }
}
