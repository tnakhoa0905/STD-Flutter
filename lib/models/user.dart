import 'package:hotel_app/models/hotel.dart';

class User {
  int id;
  String username;
  String password;
  int ratingStar;
  String description;
  bool isLike;
  int numLike;
  List<Hotel> hotel = [];
  User(
      {required this.id,
      required this.username,
      required this.password,
      required this.ratingStar,
      required this.description,
      required this.isLike,
      required this.numLike,
      required this.hotel});

  static User fromJson(Map<String, dynamic> json) => User(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      ratingStar: json['ratingStar'],
      description: json['description'],
      isLike: json['isLike'],
      numLike: json['numLike'],
      hotel: []);
}
