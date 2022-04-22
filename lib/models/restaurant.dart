import 'package:flutter/cupertino.dart';

class Restaurant {
  int RestaurantID;
  String RestaurantName;
  String Image;
  String Address;
  Restaurant(
      {required this.RestaurantID,
      required this.RestaurantName,
      required this.Address,
      required this.Image});
}

class Restaurants with ChangeNotifier {
  final List<Restaurant> data = [
    Restaurant(
        RestaurantID: 1,
        RestaurantName: 'Nhà hàng Kiều',
        Address: '65 Nguyễn Công Trứ, Phường Vĩ Dạ, Thành Phố Huế',
        Image:
            'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg'),
    Restaurant(
        RestaurantID: 2,
        RestaurantName: 'Cơm Niêu Nhà',
        Address: '77 Nguyễn Huệ, Phường Phú Nhuận, Thành Phôs Huế',
        Image:
            'https://images.foody.vn/res/g21/201010/s/foody-moc-rieu-nuong-238-636111242586051838.jpg'),
    Restaurant(
        RestaurantID: 3,
        RestaurantName: 'Nhà hàng nổi Sông Hương',
        Address: 'Trên bờ sông hương',
        Image:
            'https://media-cdn.tripadvisor.com/media/photo-s/05/b3/be/5a/hoa-su.jpg'),
    Restaurant(
        RestaurantID: 4,
        RestaurantName: 'Nhà hàng Hoa Sứ',
        Address: '268 Nguyễn Sinh Cung, Phường Vĩ Dạ, Thành Phố Huế',
        Image:
            'https://images.foody.vn/res/g21/201010/s/foody-moc-rieu-nuong-238-636111242586051838.jpg'),
  ];
  // ignore: non_constant_identifier_names
  Restaurant? GetRestaurant(int id) {
    for (int i = 0; i < data.length; i++) {
      if (data[i].RestaurantID == id) return data[i];
    }
    return null;
  }
}
