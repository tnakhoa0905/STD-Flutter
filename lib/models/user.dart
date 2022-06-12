class User {
  int id;
  String username;
  int ratingStar;
  String description;
  bool isLike;
  int numLike;
  User(
      {required this.id,
      required this.username,
      required this.ratingStar,
      required this.description,
      required this.isLike,
      required this.numLike});
}
