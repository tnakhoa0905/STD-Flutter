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
            appBar: AppBar(
              title: const Center(
                  child: Text(
                'Prolife',
                style: TextStyle(color: Colors.black),
              )),
              backgroundColor: Colors.white,
            ),
            body: FutureBuilder<model.User>(
              future: _userBloC.getUser(_auth.uid),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  model.User? user = snapshot.data;
                  return Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(32, 32, 32, 32),
                      child: Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 60,
                            minRadius: 30,
                            backgroundImage: NetworkImage(user!.avt),
                          ),
                          Text(user.name),
                          Spacer(),
                          ElevatedButton(
                              style: const ButtonStyle(),
                              onPressed: () => FirebaseAuth.instance.signOut(),
                              child: const Text('Sign Out'))
                        ],
                      ));
                }
                return const CircularProgressIndicator();
              },
            )));
  }
}
