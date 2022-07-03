import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/hotel_bloC.dart';
import 'package:hotel_app/bloC/user_bloC.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/screens/add_hotel.dart';
import 'package:hotel_app/widgets/hotel_item.dart';
import '../models/user.dart' as model;

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final UserBloC _userBloC = UserBloC();
  HotelBloC hotelBloC = HotelBloC();
  UserBloC userBloC = UserBloC();
  final _auth = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          buildAppBar(context),
          const SizedBox(
            height: 28,
          ),
          Expanded(child: buildListHotel(context)),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return FutureBuilder<model.User>(
      future: userBloC.getUser(_auth!.uid),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          model.User? user = snapshot.data;
          return Container(
            margin: const EdgeInsets.fromLTRB(32, 0, 32, 0),
            child: Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //TODO: Tràn UI tên
                  Text(
                    'Hello ${user!.name}',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'Explore ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w600),
                        children: [
                          TextSpan(
                              text: 'New Hotels',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 87, 255),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600))
                        ]),
                  )
                ]),
                const Spacer(),
                GestureDetector(
                  onTap: (() => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddHotel()),
                        )
                      }),
                  child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1)),
                      child: const Icon(
                        Icons.add,
                        size: 16,
                      )),
                )
              ],
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }

  Widget buildListHotel(BuildContext context) {
    hotelBloC.getListHotel();
    return StreamBuilder<List<Hotel>>(
        stream: hotelBloC.getListHotel(),
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.hasError) {
            return Text('error ${snapshot.error}');
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          hotels = snapshot.data!;
          return ListView.builder(
            itemCount: hotels.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: ((context, index) => HotelItem(
                  hotel: hotels[index],
                )),
          );
        });
  }
}
