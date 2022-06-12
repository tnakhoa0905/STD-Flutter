import 'package:hotel_app/models/user.dart';

class Hotel {
  int id;
  String name;
  String address;
  String description;
  int ratingStar;
  int numberReviews;
  List<User> users = [];
  Hotel(
      {required this.id,
      required this.name,
      required this.address,
      required this.description,
      required this.ratingStar,
      required this.numberReviews,
      required this.users});
}
