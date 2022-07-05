import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/models/user.dart' as model;

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
      // print(snapshot.size);
      return null;
    }
    return null;
  }

  Stream<List<Hotel>> getListHotel() {
    _listHotelController.sink.add(hotels);
    print(FirebaseFirestore.instance.collection('hotels').snapshots().map(
        (snapshot) =>
            snapshot.docs.map((doc) => Hotel.fromJson(doc.data())).toList()));
    return FirebaseFirestore.instance.collection('hotels').snapshots().map(
        (snapshot) =>
            snapshot.docs.map((doc) => Hotel.fromJson(doc.data())).toList());
    ;
  }

  Future save(String hotelID, model.User user) async {
    final docHotel =
        FirebaseFirestore.instance.collection('hotels').doc(hotelID);
    for (var item in hotels) {
      if (item.id == hotelID) {
        print('id suscess');
        if (item.users.isEmpty) {
          await docHotel
              .update({
                'users': FieldValue.arrayUnion([user.toJson()])
              })
              .then((value) => print('ok add'))
              .catchError((onError) => print("wrong in $onError"));
          item.users.add(user);
          listBookMarks.add(item);
          return;
        }
        for (var useritem in item.users) {
          print('loop user');
          if (useritem.id == user.id) {
            print('add user ${user.name}');
            print('remove user');
            item.users.remove(useritem);
            listBookMarks.remove(item);

            await docHotel
                .update({
                  'users': FieldValue.arrayRemove([user.toJson()])
                })
                .then((value) => print('ok remove'))
                .catchError((onError) => print("wrong in $onError"));
            return;
          } else {
            print('add user');
            await docHotel
                .update({
                  'users': FieldValue.arrayUnion([user.toJson()])
                })
                .then((value) => print('ok add'))
                .catchError((onError) => print("wrong in $onError"));
            item.users.add(user);
            listBookMarks.add(item);
            return;
          }
        }
      }
    }
  }

  void dispose() {
    _listHotelController.close();
  }
}
