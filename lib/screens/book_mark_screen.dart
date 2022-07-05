import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/book_mark_bloC.dart';
import 'package:hotel_app/bloC/user_bloC.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/widgets/hotel_item.dart';
import '../models/user.dart' as model;

class BookMark extends StatefulWidget {
  const BookMark({Key? key}) : super(key: key);

  @override
  State<BookMark> createState() => _BookMark();
}

class _BookMark extends State<BookMark> {
  final bookMarkBloc = BookMarkBloC();
  final _auth = FirebaseAuth.instance.currentUser;
  final userBloC = UserBloC();
  @override
  void dispose() {
    userBloC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        // margin: const EdgeInsets.all(32),
        child: FutureBuilder<model.User>(
          future: userBloC.getUser(_auth!.uid),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              model.User user = snapshot.data!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex: 2, child: buildAppBar(context)),
                  Expanded(flex: 10, child: buildListHotel(context, user))
                ],
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    ));
  }

  Widget buildAppBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(32, 16, 32, 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Bookmark',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
          ])
        ],
      ),
    );
  }

  Widget buildListHotel(BuildContext context, model.User user) {
    bookMarkBloc.getListBookMark(user.id);
    return StreamBuilder<List<Hotel>?>(
        stream: bookMarkBloc.bookMarkController,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('error ${snapshot.error}');
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Hotel> listHotels = snapshot.data!;
          print(listHotels);
          if (listHotels.isEmpty) {
            return const Text('No Bookmark');
          } else {
            print('have list');
            return ListView.builder(
              itemCount: listHotels.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: ((context, index) => HotelItem(
                    hotel: listHotels[index],
                    user: user,
                  )),
            );
          }
        });
  }
}
