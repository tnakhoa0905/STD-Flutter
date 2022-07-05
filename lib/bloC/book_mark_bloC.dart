import 'dart:async';

import 'package:hotel_app/models/hotel.dart';

class BookMarkBloC {
  final StreamController<List<Hotel>> _controller =
      StreamController<List<Hotel>>();
  Stream<List<Hotel>> get bookMarkController => _controller.stream;

  List<Hotel> getListBookMark(String idUser) {
    List<Hotel> listBookMark = [];
    for (var item in hotels) {
      if (item.users.isEmpty) continue;
      for (var bookMark in item.users) {
        if (bookMark.id == idUser) listBookMark.add(item);
      }
    }
    print(listBookMark[0].name);
    _controller.sink.add(listBookMark);
    return listBookMark;
  }
}
