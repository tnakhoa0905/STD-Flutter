class User {
  int id;
  String email;
  String avatar;
  String name;
  String lastName;
  bool isFollowed;
  User(
      {required this.id,
      required this.email,
      required this.avatar,
      required this.lastName,
      required this.name,
      required this.isFollowed});
}
