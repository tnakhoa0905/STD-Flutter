import 'dart:async';

import 'package:hotel_app/models/hotel.dart';

class BookMarkBloC {
  final StreamController<List<Hotel>> _controller =
      StreamController<List<Hotel>>();
  Stream<List<Hotel>> get bookMarkController => _controller.stream;

  List<Hotel>? getListBookMark(String idUser) {
    List<Hotel> listHotels = [];
    for (var item in hotels) {
      if (item.users.isEmpty) continue;
      for (var bookMark in item.users) {
        if (bookMark.id == idUser) listHotels.add(item);
      }
    }

    _controller.sink.add(listHotels);
  }

  void dispose() {
    _controller.close();
  }
}
