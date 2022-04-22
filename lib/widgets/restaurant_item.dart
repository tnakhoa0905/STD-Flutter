import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/detail_retaurant.dart';

import '../models/restaurant.dart';

class RestaurantItem extends StatefulWidget {
  final Restaurant restaurant;
  const RestaurantItem({Key? key, required this.restaurant}) : super(key: key);

  @override
  State<RestaurantItem> createState() => _RestaurantItem();
}

class _RestaurantItem extends State<RestaurantItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 100, 90, 90),
            borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              child: Image(
                image: NetworkImage('${widget.restaurant.Image}', scale: 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.restaurant.RestaurantName,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20)),
                      Text(widget.restaurant.Address,
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16)),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 169, 187, 169))),
                      onPressed: () {
                        print(widget.restaurant.RestaurantName);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailRestaurant(
                                    item: widget.restaurant,
                                  )),
                        );
                      },
                      child: const Text(
                        "Xem Thêm",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
