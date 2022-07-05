import 'dart:async';
import 'package:hotel_app/bloC/signup_bloc.dart';
import 'package:hotel_app/models/user.dart' as model;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserBloC {
  StreamController<User> _userControllerFirebase = StreamController<User>();
  Stream<User> get userStreamFirebase => _userControllerFirebase.stream;
  StreamController<model.User> _userController = StreamController<model.User>();
  Stream<model.User> get userStream => _userController.stream;

  Future<void> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      print('ok');
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  Future<void> signUpWithEmailAndPassword(
      String email, String password, model.User userModel) async {
    SignUpBloC signUpBloC = SignUpBloC();
    try {
      User user;
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((result) => {user = result.user!});
      // signUpBloC.signUp(userModel, user.uid);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  Future<model.User> getUser(String id) async {
    final userDoc = FirebaseFirestore.instance.collection('users').doc(id);
    final result = await userDoc.get();
    _userController.sink.add(model.User.fromJson(result.data()!));
    return model.User.fromJson(result.data()!);
  }

  void dispose() {
    _userControllerFirebase.close();
  }
}
