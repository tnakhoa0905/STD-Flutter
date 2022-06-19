import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserBloC {
  StreamController<User> _userController = StreamController<User>();
  Stream<User> get userStream => _userController.stream;

  Future<void> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print('ok');
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
