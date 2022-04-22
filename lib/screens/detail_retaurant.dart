import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/restaurant.dart';

class DetailRestaurant extends StatefulWidget {
  final Restaurant item;
  const DetailRestaurant({Key? key, required this.item}) : super(key: key);

  @override
  State<DetailRestaurant> createState() => _DetailRestaurant();
}

class _DetailRestaurant extends State<DetailRestaurant> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(widget.item.RestaurantName)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
            child: Column(children: [
              SizedBox(
                child: Image(
                    image: NetworkImage(
                        'https://images.foody.vn/res/g21/201010/s/foody-moc-rieu-nuong-238-636111242586051838.jpg')),
              ),
              Text(widget.item.RestaurantName,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              Text(widget.item.Address,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
            ]),
          ),
        ),
      ),
    );
  }
}
