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
          "https://s3-alpha-sig.figma.com/img/9761/7c2f/98430a33e9b8dd327968c7049a2a4b51?Expires=1654473600&Signature=Y0Dks170NrJiTnEbiJaVLebeMhl87pXj2uDI547eDcRif7pJpXBAGciI5c6iLsODzmwUQtpBl41w0lRhEhWxcFr3YKtZrfS3jwqdhxR7cTqQueFR4hpmqM3KWUSfVhI-0kyj7oScHA0F6tYkt1Ev9ZCJItRjp3gbqQHO~u8KDxcne7uALhEvH~9eQxr4hTdvRfLvOwrOrGnd3G6Rqbs7Y3BHFHsJwfIlN0BbtSe2YHK7gesDBbaP-3k8hO9iSNTz2kG~zHgSs8rEA4GjSbospS2z-I6HLiLsErJorufvxMMycvA7A18FtS-HqldFzU8ToR5goYvmk21jg9iaBwcxZg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description:
          "Chương trình âm nhạc Hàn Quốc được phát sóng hàng tuần, với các nghệ sĩ khác nhau biểu diễn trên các chương trình để quảng bá cho sản phẩm âm nhạc của họ. Các đơn vị phát thanh truyền hình lớn nhất của Hàn Quốc đều có chương trình riêng của mình, được phát trên các kênh khác nhau. SBS có Inkigayo, KBS có Music Bank, MBC có Show! Music Core (hay còn được gọi đơn giản là Music Core), Mnet có M Countdown, MBC M có Show Champion and SBS MTV có The Show.",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 1,
          email: "tnakhoa.0905@gmail.com",
          avatar:
              "https://s3-alpha-sig.figma.com/img/0125/693d/b778cb478d19e07a664bd764ddd467ae?Expires=1654473600&Signature=F7P2icYWdhFkN8taCI7A9SDvkLNCrWLfCG6JdsLs2~XhyvY1labIpBDWpRpnQV~bdO6dpiQBCWUD6GWjCLae6XRgSbJaodMTrim1K8eqvwOvVD0cVxyZcU-wbi3gCdYNUmJ-7~BUJZ14o8lRtQ6u-Emq7K7B334rpER6SqUCEsYnPTl3LIeve0u1aYkdlLWD9WPge3wDiUAlHoFsTA61qxzGe7OA8zr3wNYJmZgmq81albP6WvCx8tWbuy-l-lQ6WZdA0WPSjzpnKKjy-rHQhkym7JbK3NnZLTCqAhBdSGd79WYpkDCRqDmFgWBzn-~wIzWR2eyCWPliHK2CeyRVyg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
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
          "https://s3-alpha-sig.figma.com/img/0125/693d/b778cb478d19e07a664bd764ddd467ae?Expires=1654473600&Signature=F7P2icYWdhFkN8taCI7A9SDvkLNCrWLfCG6JdsLs2~XhyvY1labIpBDWpRpnQV~bdO6dpiQBCWUD6GWjCLae6XRgSbJaodMTrim1K8eqvwOvVD0cVxyZcU-wbi3gCdYNUmJ-7~BUJZ14o8lRtQ6u-Emq7K7B334rpER6SqUCEsYnPTl3LIeve0u1aYkdlLWD9WPge3wDiUAlHoFsTA61qxzGe7OA8zr3wNYJmZgmq81albP6WvCx8tWbuy-l-lQ6WZdA0WPSjzpnKKjy-rHQhkym7JbK3NnZLTCqAhBdSGd79WYpkDCRqDmFgWBzn-~wIzWR2eyCWPliHK2CeyRVyg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description:
          "Chương trình âm nhạc Hàn Quốc được phát sóng hàng tuần, với các nghệ sĩ khác nhau biểu diễn trên các chương trình để quảng bá cho sản phẩm âm nhạc của họ. Các đơn vị phát thanh truyền hình lớn nhất của Hàn Quốc đều có chương trình riêng của mình, được phát trên các kênh khác nhau. SBS có Inkigayo, KBS có Music Bank, MBC có Show! Music Core (hay còn được gọi đơn giản là Music Core), Mnet có M Countdown, MBC M có Show Champion and SBS MTV có The Show.",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 2,
          email: "tnakhoa.0905@gmail.com",
          avatar: "assets/images/avatars/avt1.jpg",
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
          "https://s3-alpha-sig.figma.com/img/9761/7c2f/98430a33e9b8dd327968c7049a2a4b51?Expires=1654473600&Signature=Y0Dks170NrJiTnEbiJaVLebeMhl87pXj2uDI547eDcRif7pJpXBAGciI5c6iLsODzmwUQtpBl41w0lRhEhWxcFr3YKtZrfS3jwqdhxR7cTqQueFR4hpmqM3KWUSfVhI-0kyj7oScHA0F6tYkt1Ev9ZCJItRjp3gbqQHO~u8KDxcne7uALhEvH~9eQxr4hTdvRfLvOwrOrGnd3G6Rqbs7Y3BHFHsJwfIlN0BbtSe2YHK7gesDBbaP-3k8hO9iSNTz2kG~zHgSs8rEA4GjSbospS2z-I6HLiLsErJorufvxMMycvA7A18FtS-HqldFzU8ToR5goYvmk21jg9iaBwcxZg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description:
          "Chương trình âm nhạc Hàn Quốc được phát sóng hàng tuần, với các nghệ sĩ khác nhau biểu diễn trên các chương trình để quảng bá cho sản phẩm âm nhạc của họ. Các đơn vị phát thanh truyền hình lớn nhất của Hàn Quốc đều có chương trình riêng của mình, được phát trên các kênh khác nhau. SBS có Inkigayo, KBS có Music Bank, MBC có Show! Music Core (hay còn được gọi đơn giản là Music Core), Mnet có M Countdown, MBC M có Show Champion and SBS MTV có The Show.",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 3,
          email: "tnakhoa.0905@gmail.com",
          avatar: "assets/images/avatars/avt1.jpg",
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
          "https://s3-alpha-sig.figma.com/img/0125/693d/b778cb478d19e07a664bd764ddd467ae?Expires=1654473600&Signature=F7P2icYWdhFkN8taCI7A9SDvkLNCrWLfCG6JdsLs2~XhyvY1labIpBDWpRpnQV~bdO6dpiQBCWUD6GWjCLae6XRgSbJaodMTrim1K8eqvwOvVD0cVxyZcU-wbi3gCdYNUmJ-7~BUJZ14o8lRtQ6u-Emq7K7B334rpER6SqUCEsYnPTl3LIeve0u1aYkdlLWD9WPge3wDiUAlHoFsTA61qxzGe7OA8zr3wNYJmZgmq81albP6WvCx8tWbuy-l-lQ6WZdA0WPSjzpnKKjy-rHQhkym7JbK3NnZLTCqAhBdSGd79WYpkDCRqDmFgWBzn-~wIzWR2eyCWPliHK2CeyRVyg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description:
          "Chương trình âm nhạc Hàn Quốc được phát sóng hàng tuần, với các nghệ sĩ khác nhau biểu diễn trên các chương trình để quảng bá cho sản phẩm âm nhạc của họ. Các đơn vị phát thanh truyền hình lớn nhất của Hàn Quốc đều có chương trình riêng của mình, được phát trên các kênh khác nhau. SBS có Inkigayo, KBS có Music Bank, MBC có Show! Music Core (hay còn được gọi đơn giản là Music Core), Mnet có M Countdown, MBC M có Show Champion and SBS MTV có The Show.",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 4,
          email: "tnakhoa.0905@gmail.com",
          avatar: "assets/images/avatars/avt2.jpg",
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
          "https://s3-alpha-sig.figma.com/img/9761/7c2f/98430a33e9b8dd327968c7049a2a4b51?Expires=1654473600&Signature=Y0Dks170NrJiTnEbiJaVLebeMhl87pXj2uDI547eDcRif7pJpXBAGciI5c6iLsODzmwUQtpBl41w0lRhEhWxcFr3YKtZrfS3jwqdhxR7cTqQueFR4hpmqM3KWUSfVhI-0kyj7oScHA0F6tYkt1Ev9ZCJItRjp3gbqQHO~u8KDxcne7uALhEvH~9eQxr4hTdvRfLvOwrOrGnd3G6Rqbs7Y3BHFHsJwfIlN0BbtSe2YHK7gesDBbaP-3k8hO9iSNTz2kG~zHgSs8rEA4GjSbospS2z-I6HLiLsErJorufvxMMycvA7A18FtS-HqldFzU8ToR5goYvmk21jg9iaBwcxZg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description:
          "Chương trình âm nhạc Hàn Quốc được phát sóng hàng tuần, với các nghệ sĩ khác nhau biểu diễn trên các chương trình để quảng bá cho sản phẩm âm nhạc của họ. Các đơn vị phát thanh truyền hình lớn nhất của Hàn Quốc đều có chương trình riêng của mình, được phát trên các kênh khác nhau. SBS có Inkigayo, KBS có Music Bank, MBC có Show! Music Core (hay còn được gọi đơn giản là Music Core), Mnet có M Countdown, MBC M có Show Champion and SBS MTV có The Show.",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 5,
          email: "tnakhoa.0905@gmail.com",
          avatar: "assets/images/avatars/avt3.jpg",
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
          "https://s3-alpha-sig.figma.com/img/0125/693d/b778cb478d19e07a664bd764ddd467ae?Expires=1654473600&Signature=F7P2icYWdhFkN8taCI7A9SDvkLNCrWLfCG6JdsLs2~XhyvY1labIpBDWpRpnQV~bdO6dpiQBCWUD6GWjCLae6XRgSbJaodMTrim1K8eqvwOvVD0cVxyZcU-wbi3gCdYNUmJ-7~BUJZ14o8lRtQ6u-Emq7K7B334rpER6SqUCEsYnPTl3LIeve0u1aYkdlLWD9WPge3wDiUAlHoFsTA61qxzGe7OA8zr3wNYJmZgmq81albP6WvCx8tWbuy-l-lQ6WZdA0WPSjzpnKKjy-rHQhkym7JbK3NnZLTCqAhBdSGd79WYpkDCRqDmFgWBzn-~wIzWR2eyCWPliHK2CeyRVyg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      locationName: "77 Nguyễn huệ",
      description:
          "Chương trình âm nhạc Hàn Quốc được phát sóng hàng tuần, với các nghệ sĩ khác nhau biểu diễn trên các chương trình để quảng bá cho sản phẩm âm nhạc của họ. Các đơn vị phát thanh truyền hình lớn nhất của Hàn Quốc đều có chương trình riêng của mình, được phát trên các kênh khác nhau. SBS có Inkigayo, KBS có Music Bank, MBC có Show! Music Core (hay còn được gọi đơn giản là Music Core), Mnet có M Countdown, MBC M có Show Champion and SBS MTV có The Show.",
      timeStart: DateTime.utc(2022, 12, 23),
      timeEnd: DateTime.utc(2022, 12, 24),
      organiser: User(
          id: 6,
          email: "tnakhoa.0905@gmail.com",
          avatar: "assets/images/avatars/avt4.jpg",
          lastName: "Trương",
          name: "Khoa",
          isFollowed: true),
      price: '100',
      link: '',
      isLike: false,
      isGoing: true),
];
