import 'dart:collection';

import 'package:flutter/cupertino.dart';

import '../models/restaurant.dart';

class RestaurantProvider extends ChangeNotifier {
  List<Restaurant> datas = [
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
    Restaurant(
        restaurantID: 5,
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
        restaurantID: 6,
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
        restaurantID: 7,
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
        restaurantID: 8,
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
    Restaurant(
        restaurantID: 9,
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
        restaurantID: 10,
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
        restaurantID: 11,
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
        restaurantID: 12,
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
    Restaurant(
        restaurantID: 13,
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
        restaurantID: 14,
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
        restaurantID: 15,
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
        restaurantID: 16,
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

  List<Restaurant> getLists(int length) {
    List<Restaurant> result = [];
    for (int i = 0; i < length; i++) {
      result.add(datas[i]);
    }
    return result;
  }

  void setLiked(int id) {
    for (int i = 0; i < datas.length; i++) {
      if (datas[i].restaurantID == id) {
        if (datas[i].statusLike == false) {
          datas[i].statusLike = true;
          datas[i].like++;
        } else {
          datas[i].like--;
          datas[i].statusLike = false;
        }
      }
    }
    notifyListeners();
  }

  Restaurant? getRestaurant(int id) {
    for (int i = 0; i < datas.length; i++) {
      if (datas[i].restaurantID == id) {
        return datas[i];
      }
    }
    return null;
  }
}
