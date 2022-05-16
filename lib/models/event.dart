import 'package:social_network_app/models/user.dart';

class Event {
  int id;
  String name;
  String pathImage;
  String locationName;
  String description;
  DateTime timeStart;
  DateTime timeEnd;
  User organiser;
  String price;
  String link;
  bool isLike;
  bool isGoing;
  Event(
      {required this.id,
      required this.name,
      required this.pathImage,
      required this.locationName,
      required this.description,
      required this.timeStart,
      required this.timeEnd,
      required this.organiser,
      required this.price,
      required this.link,
      required this.isLike,
      required this.isGoing});
}

List<Event> events = [
  Event(
      id: 1,
      name: "Đêm nhạc từ thiện",
      pathImage:
          "https://s3-alpha-sig.figma.com/img/9761/7c2f/98430a33e9b8dd327968c7049a2a4b51?Expires=1653264000&Signature=Deq6OZPuQFE8iHjLHsZzULfIdKTDVw9UqGplWYXkQqkbb3D7zVJh6X93CDIobJMnr7ZukQn73UNpkh83a985184EsVaNxK0UTkbIekT-k4GkBdibjlnw9kVmzdIXly51Z6bdHQ1doHNlaBCLME59AoF1NuhCPtwjnFTQhGsxtVp0YSiDnA4R0nnUWVjWNxkIj5Ezqg0oi9Mg4IZrXuk-dpFUlR~Mi6MI1mYPUM4NjoGDRzw8AkfuZq20J08-s6pwwTWezDBaU8rBy6YTFmel52l81xOQVAgGps0JLDowBDB7ccktZXE56IyQRj6-eUg6GbNNOf1CAhk2Ae6uNM6CgQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description:
          "Chương trình âm nhạc Hàn Quốc được phát sóng hàng tuần, với các nghệ sĩ khác nhau biểu diễn trên các chương trình để quảng bá cho sản phẩm âm nhạc của họ. Các đơn vị phát thanh truyền hình lớn nhất của Hàn Quốc đều có chương trình riêng của mình, được phát trên các kênh khác nhau. SBS có Inkigayo, KBS có Music Bank, MBC có Show! Music Core (hay còn được gọi đơn giản là Music Core), Mnet có M Countdown, MBC M có Show Champion and SBS MTV có The Show.",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 1,
          email: "tnakhoa.0905@gmail.com",
          avatar:
              "https://s3-alpha-sig.figma.com/img/e4d9/a1bf/76742336cabc731401eeab961de1ad5f?Expires=1653264000&Signature=a7-oEKCNR1jCTQL2Sw9AoMSHQyc37mDdCNg7~d3VTTmGxCaAPrjb0~-2CfrpRncc4pxehRxY~JkR1NyMMUieRsUlkpQz8IUsIlYl5PJUFWEF0YP4EGBwMIyiXIXNPBySQpI5dr8DIR2qCj~N0k3iKO4WD6~QufVkdwBNtkH05CDpZQRCb6KDQPeJo8maLyCTvc0qxPjOfqUdpsL7ucPVXcCj692ox-ryTDIJaYodwVVWjbIHdXkwm3Q64rrgcsSt8sLdnqZu7UGv2oXSze9FSO0KTI7FKSbNUFtZHSjGY9AZeOd1GsVLtOStrat2CxdAuBzSdzBiDM1Tcml1Zug2mQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
          lastName: "Trương",
          name: "Khoa",
          isFollowed: true),
      price: '29.30',
      link: '',
      isLike: true,
      isGoing: true),
  Event(
      id: 2,
      name: "Đêm nhạc từ thiện",
      pathImage:
          "https://s3-alpha-sig.figma.com/img/0125/693d/b778cb478d19e07a664bd764ddd467ae?Expires=1653264000&Signature=GFPwRyltvDr0IzLETVfDB0wHvImMlHFoBeNW11Qf5sGyRToVo0i-I9Y1YiN-2jj8yWSY8ThhcZLn0ZYP2FBKCSpv~FYTQnrMdm2cL7ojlEL0vzKYTGP7YSlVMh0wFcKVtcf3owTyqmKTPeAqWbBeA8K3bSoZCGe2YBwklNFGVNo-6zZ7fICelkdoK-ucjsQpg~DfIg-UbKZzEtQfFfmIy9k5r9-xpn1d13Fz0GoF9Ge5a1Sz7-v0UmnYDhhyQXWy37JLQcGVQwwBdep6eie63pmiDPE2Dy73tQ~MdH~9cTABzngN-ZCfHfGC53STQNohXcPHaCpjvaoHfsHmJ2wkGQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description: "Show âm nhạc lớn nhất cả nước",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 1,
          email: "tnakhoa.0905@gmail.com",
          avatar: "avatar",
          lastName: "Trương",
          name: "Khoa",
          isFollowed: true),
      price: '',
      link: '',
      isLike: false,
      isGoing: false),
  Event(
      id: 3,
      name: "Đêm nhạc từ thiện",
      pathImage:
          "https://s3-alpha-sig.figma.com/img/9761/7c2f/98430a33e9b8dd327968c7049a2a4b51?Expires=1653264000&Signature=Deq6OZPuQFE8iHjLHsZzULfIdKTDVw9UqGplWYXkQqkbb3D7zVJh6X93CDIobJMnr7ZukQn73UNpkh83a985184EsVaNxK0UTkbIekT-k4GkBdibjlnw9kVmzdIXly51Z6bdHQ1doHNlaBCLME59AoF1NuhCPtwjnFTQhGsxtVp0YSiDnA4R0nnUWVjWNxkIj5Ezqg0oi9Mg4IZrXuk-dpFUlR~Mi6MI1mYPUM4NjoGDRzw8AkfuZq20J08-s6pwwTWezDBaU8rBy6YTFmel52l81xOQVAgGps0JLDowBDB7ccktZXE56IyQRj6-eUg6GbNNOf1CAhk2Ae6uNM6CgQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description: "Show âm nhạc lớn nhất cả nước",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 1,
          email: "tnakhoa.0905@gmail.com",
          avatar: "avatar",
          lastName: "Trương",
          name: "Khoa",
          isFollowed: true),
      price: '100',
      link: '',
      isLike: true,
      isGoing: true),
  Event(
      id: 4,
      name: "Đêm nhạc từ thiện",
      pathImage:
          "https://s3-alpha-sig.figma.com/img/0125/693d/b778cb478d19e07a664bd764ddd467ae?Expires=1653264000&Signature=GFPwRyltvDr0IzLETVfDB0wHvImMlHFoBeNW11Qf5sGyRToVo0i-I9Y1YiN-2jj8yWSY8ThhcZLn0ZYP2FBKCSpv~FYTQnrMdm2cL7ojlEL0vzKYTGP7YSlVMh0wFcKVtcf3owTyqmKTPeAqWbBeA8K3bSoZCGe2YBwklNFGVNo-6zZ7fICelkdoK-ucjsQpg~DfIg-UbKZzEtQfFfmIy9k5r9-xpn1d13Fz0GoF9Ge5a1Sz7-v0UmnYDhhyQXWy37JLQcGVQwwBdep6eie63pmiDPE2Dy73tQ~MdH~9cTABzngN-ZCfHfGC53STQNohXcPHaCpjvaoHfsHmJ2wkGQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description: "Show âm nhạc lớn nhất cả nước",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 1,
          email: "tnakhoa.0905@gmail.com",
          avatar: "avatar",
          lastName: "Trương",
          name: "Khoa",
          isFollowed: true),
      price: '100',
      link: '',
      isLike: true,
      isGoing: true),
  Event(
      id: 5,
      name: "Đêm nhạc từ thiện",
      pathImage:
          "https://s3-alpha-sig.figma.com/img/9761/7c2f/98430a33e9b8dd327968c7049a2a4b51?Expires=1653264000&Signature=Deq6OZPuQFE8iHjLHsZzULfIdKTDVw9UqGplWYXkQqkbb3D7zVJh6X93CDIobJMnr7ZukQn73UNpkh83a985184EsVaNxK0UTkbIekT-k4GkBdibjlnw9kVmzdIXly51Z6bdHQ1doHNlaBCLME59AoF1NuhCPtwjnFTQhGsxtVp0YSiDnA4R0nnUWVjWNxkIj5Ezqg0oi9Mg4IZrXuk-dpFUlR~Mi6MI1mYPUM4NjoGDRzw8AkfuZq20J08-s6pwwTWezDBaU8rBy6YTFmel52l81xOQVAgGps0JLDowBDB7ccktZXE56IyQRj6-eUg6GbNNOf1CAhk2Ae6uNM6CgQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description: "Show âm nhạc lớn nhất cả nước",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 1,
          email: "tnakhoa.0905@gmail.com",
          avatar: "avatar",
          lastName: "Trương",
          name: "Khoa",
          isFollowed: true),
      price: '100',
      link: '',
      isLike: true,
      isGoing: true),
  Event(
      id: 6,
      name: "Đêm nhạc từ thiện",
      pathImage:
          "https://s3-alpha-sig.figma.com/img/0125/693d/b778cb478d19e07a664bd764ddd467ae?Expires=1653264000&Signature=GFPwRyltvDr0IzLETVfDB0wHvImMlHFoBeNW11Qf5sGyRToVo0i-I9Y1YiN-2jj8yWSY8ThhcZLn0ZYP2FBKCSpv~FYTQnrMdm2cL7ojlEL0vzKYTGP7YSlVMh0wFcKVtcf3owTyqmKTPeAqWbBeA8K3bSoZCGe2YBwklNFGVNo-6zZ7fICelkdoK-ucjsQpg~DfIg-UbKZzEtQfFfmIy9k5r9-xpn1d13Fz0GoF9Ge5a1Sz7-v0UmnYDhhyQXWy37JLQcGVQwwBdep6eie63pmiDPE2Dy73tQ~MdH~9cTABzngN-ZCfHfGC53STQNohXcPHaCpjvaoHfsHmJ2wkGQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description: "Show âm nhạc lớn nhất cả nước",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 1,
          email: "tnakhoa.0905@gmail.com",
          avatar: "avatar",
          lastName: "Trương",
          name: "Khoa",
          isFollowed: true),
      price: '100',
      link: '',
      isLike: false,
      isGoing: true),
];
