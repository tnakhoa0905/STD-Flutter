import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/models/user.dart';

class AddHotelBloC {
  StreamController<User> _userController = StreamController<User>();
  Stream<User> get userStream => _userController.stream;

  Future createHotel(Hotel hotel) async {
    final docHotel = FirebaseFirestore.instance.collection('hotels').doc();
    hotel.id = docHotel.id;
    final json = hotel.toJson();
    await docHotel
        .set(json)
        .then((value) => print('duoc roi'))
        .catchError((error) => print("sai vi:$error"));
  }
}
