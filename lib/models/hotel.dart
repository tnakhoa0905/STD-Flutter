import 'package:hotel_app/models/review.dart';
import 'package:hotel_app/models/user.dart' as model;

class Hotel {
  String id;
  String name;
  String address;
  String pathImage;
  String description;
  int ratingStar = 0;
  int numberReviews = 0;
  bool isLiked;
  List<Review> reviews = [];
  List<model.User> users = [];
  int lon = 16;
  int lat = 17;
  Hotel(
      {required this.id,
      required this.name,
      required this.address,
      required this.pathImage,
      required this.description,
      required this.ratingStar,
      required this.numberReviews,
      required this.reviews,
      required this.users,
      required this.isLiked,
      required this.lon,
      required this.lat});
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'address': address,
        'pathImage': pathImage,
        'description': description,
        'ratingStar': ratingStar,
        'numberReviews': numberReviews,
        'isLiked': isLiked,
        'reviews': reviews,
        'users': users,
        'lon': lon,
        'lat': lat
      };
  static Hotel fromJson(Map<String, dynamic> json) => Hotel(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      pathImage: json['pathImage'],
      description: json['description'],
      ratingStar: json['ratingStar'],
      numberReviews: json['numberReviews'],
      reviews:
          List<Review>.from(json['reviews'].map((e) => Review.fromJson(e))),
      users: List<model.User>.from(
          json['users'].map((e) => model.User.fromJson(e))),
      isLiked: json['isLiked'] as bool,
      lon: json['lon'],
      lat: json['lat']);
}

List<Hotel> hotels = [];
