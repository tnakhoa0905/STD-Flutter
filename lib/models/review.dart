class Review {
  String description;
  int rating;
  int isLiked;
  String idUser;

  Review({
    required this.description,
    required this.rating,
    this.isLiked = 0,
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

List<Review> listReviews = [];
