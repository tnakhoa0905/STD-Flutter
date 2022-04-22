import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';
import '../widgets/restaurant_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _listRestaurant =
        Provider.of<Restaurants>(context, listen: false).data;
    print(_listRestaurant);
    return Scaffold(
      appBar: AppBar(title: Text("Restaurant")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _listRestaurant.length,
            itemBuilder: (context, index) =>
                RestaurantItem(restaurant: _listRestaurant[index])),
      ),
    );
  }
}
