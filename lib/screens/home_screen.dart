import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/providers/retaurant_provider.dart';

import '../models/restaurant.dart';
import '../widgets/restaurant_item.dart';
import 'package:restaurant_app/blocs/restaurant_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();
  int i = 4;
  List<Restaurant> _restaurants = [];
  @override
  void initState() {
    super.initState();
    // khởi tạo danh sách nhà hàng
    _restaurants =
        Provider.of<RestaurantProvider>(context, listen: false).getLists(i);
    print(_restaurants);
    //lắng nghe sự kiện cuộn xem đã đạt dài nhất chưa
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  _getMoreData() {
    print('Get More Data');
    if (i ==
        Provider.of<RestaurantProvider>(context, listen: false).datas.length) {
      print('hết ds rồi');
      return;
    }
    Future.delayed(const Duration(seconds: 2), () {
      // Here you can write your code
      i += 4;
      _restaurants =
          Provider.of<RestaurantProvider>(context, listen: false).getLists(i);
      print(i);
      print(_restaurants);
      setState(() {
        // Here you can write your code for open new view
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // final _restaurants =
    //     Provider.of<RestaurantProvider>(context, listen: false).datas;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(flex: 2, child: buildAppbar(context)),
            Expanded(flex: 2, child: buildListType(context)),
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                  child: Row(
                    children: const [
                      Text(
                        'Popular in your area',
                        style: TextStyle(fontSize: 24),
                      ),
                      Spacer(),
                      Icon(FontAwesomeIcons.filter)
                    ],
                  ),
                )),
            Expanded(
              flex: 8,
              child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                  child: ListView.builder(
                      controller: scrollController,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: _restaurants.length + 1,
                      itemBuilder: (context, index) {
                        if (index == _restaurants.length) {
                          return const CupertinoActivityIndicator(
                            radius: 20,
                          );
                        }
                        return RestaurantItem(
                            restaurantID: _restaurants[index].restaurantID);
                      })),
            ),
          ],
        ),
        bottomNavigationBar: buildBottomNavigationBar(context),
      ),
    );
  }

  Widget buildAppbar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Welcome back,',
                  style: TextStyle(
                      fontSize: 24, color: Color.fromARGB(255, 102, 99, 99))),
              Text('Khoa', style: TextStyle(fontSize: 24)),
            ],
          ),
          const Spacer(),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(250)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x54000000),
                  spreadRadius: 4,
                  blurRadius: 20,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                width: 60,
                height: 60,
                image: AssetImage('assets/images/avt.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext ctx) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.heart),
          label: 'Favorite',
        )
      ],
    );
  }

  Widget buildListType(BuildContext ctx) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(
          color: Color.fromARGB(248, 202, 198, 198),
          width: 2.0,
        ),
        bottom: BorderSide(
          color: Color.fromARGB(248, 202, 198, 198),
          width: 2.0,
        ),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 236, 242, 254))),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Wine'),
                  Icon(FontAwesomeIcons.wineGlassEmpty)
                ],
              )),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 248, 242))),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Desert',
                      style: TextStyle(
                        color: Color.fromARGB(255, 254, 168, 168),
                      )),
                  Icon(
                    FontAwesomeIcons.bowlFood,
                    color: Color.fromARGB(255, 254, 168, 168),
                  )
                ],
              )),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 255, 248, 242))),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text('Soup'), Icon(FontAwesomeIcons.bowlRice)],
              )),
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 241, 247, 247))),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text('Salad'), Icon(FontAwesomeIcons.leaf)],
              )),
        ],
      ),
    );
  }
}
