import 'dart:async';

import 'package:flutter/cupertino.dart';

class Restaurant {
  int restaurantID;
  String restaurantName;
  String image;
  String address;
  int like;
  bool statusLike = false;
  var listImange = [];
  Restaurant(
      {required this.restaurantID,
      required this.restaurantName,
      required this.address,
      required this.image,
      required this.like,
      required this.statusLike,
      required this.listImange});
}

final List<Restaurant> data = [
  Restaurant(
      restaurantID: 1,
      restaurantName: 'Nhà hàng Kiều',
      address: '65 Nguyễn Công Trứ, Phường Vĩ Dạ, Thành Phố Huế',
      image:
          'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
      like: 8,
      statusLike: false,
      listImange: [
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg'
      ]),
  Restaurant(
      restaurantID: 2,
      restaurantName: 'Cơm Niêu Nhà',
      address: '77 Nguyễn Huệ, Phường Phú Nhuận, Thành Phôs Huế',
      image:
          'https://images.foody.vn/res/g21/201010/s/foody-moc-rieu-nuong-238-636111242586051838.jpg',
      like: 8,
      statusLike: false,
      listImange: [
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg'
      ]),
  Restaurant(
      restaurantID: 3,
      restaurantName: 'Nhà hàng nổi Sông Hương',
      address: 'Trên bờ sông hương',
      image:
          'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
      like: 8,
      statusLike: true,
      listImange: [
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg'
      ]),
  Restaurant(
      restaurantID: 4,
      restaurantName: 'Nhà hàng Hoa Sứ',
      address: '268 Nguyễn Sinh Cung, Phường Vĩ Dạ, Thành Phố Huế',
      image:
          'https://images.foody.vn/res/g21/201010/s/foody-moc-rieu-nuong-238-636111242586051838.jpg',
      like: 8,
      statusLike: false,
      listImange: [
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg',
        'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg'
      ]),
];
// ignore: non_constant_identifier_names
