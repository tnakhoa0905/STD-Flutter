import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_app/models/hotel.dart';

class HotelBloC {
  final StreamController<List<Hotel>> _listHotelController =
      StreamController<List<Hotel>>();

  Stream<List<Hotel>> get listHotel => _listHotelController.stream;

  Future<List<Hotel>?> readHotel() async {
    final docHotel = FirebaseFirestore.instance.collection('hotels');
    final snapshot = await docHotel.get();
    if (snapshot.size < 0) {
      print('Wrong read dâta');
    } else {
      print(snapshot.size);
      return null;
    }
    return null;
  }

  Stream<List<Hotel>> getListHotel() {
    _listHotelController.sink.add(hotels);
    print(FirebaseFirestore.instance
        .collection('hotels')
        .orderBy('name')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Hotel.fromJson(doc.data())).toList()));
    return FirebaseFirestore.instance.collection('hotels').snapshots().map(
        (snapshot) =>
            snapshot.docs.map((doc) => Hotel.fromJson(doc.data())).toList());
    ;
  }

  void save(String id) {
    final docHotel = FirebaseFirestore.instance.collection('hotels').doc(id);
    for (var item in hotels) {
      if (item.id == id) {
        if (item.isLiked == true) {
          item.isLiked == false;
          docHotel.update({'isLiked': false});
          return;
        } else {
          item.isLiked == true;
          docHotel.update({'isLiked': true});
          return;
        }
      }
    }
    // docHotel.update({'isLiked': true});
  }
}
