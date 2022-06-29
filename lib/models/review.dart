class Review {
  String description;
  int rating;
  bool isLiked;
  String idUser;

  Review({
    required this.description,
    required this.rating,
    required this.isLiked,
    required this.idUser,
  });
  static Review fromJson(Map<String, dynamic> json) => Review(
        description: json['description'],
        rating: json['rating'],
        isLiked: json['isLiked'],
        idUser: json['uid'],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "rating": rating,
        "isLiked": isLiked,
        "uid": idUser,
      };
}
