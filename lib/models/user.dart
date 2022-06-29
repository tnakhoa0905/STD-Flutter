import 'package:hotel_app/models/hotel.dart';

class User {
  String id;
  String name;
  String avt;

  User({
    required this.id,
    required this.name,
    required this.avt,
  });

  static User fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        name: json['name'],
        avt: json['avt'],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "avt": avt,
      };
}
