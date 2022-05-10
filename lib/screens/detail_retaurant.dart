import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
// import 'package:restaurant_app/blocs/restaurant_bloc.dart';

import '../models/restaurant.dart';
import '../providers/retaurant_provider.dart';

class DetailRestaurant extends StatefulWidget {
  final int restaurantID;
  const DetailRestaurant({Key? key, required this.restaurantID})
      : super(key: key);

  @override
  State<DetailRestaurant> createState() => _DetailRestaurant();
}

class _DetailRestaurant extends State<DetailRestaurant> {
  @override
  Widget build(BuildContext context) {
    Restaurant _restaurant =
        context.watch<RestaurantProvider>().getRestaurant(widget.restaurantID)!;
    // TODO: MaterialApp là gì!!!
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: buildAppbar(context, _restaurant)),
              Expanded(
                flex: 1,
                child: Text(_restaurant.restaurantName,
                    style: const TextStyle(
                        fontSize: 36, color: Color.fromARGB(255, 0, 0, 0))),
              ),
              Expanded(
                flex: 6,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _restaurant.listImange.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(
                            right: 16, bottom: 16, top: 16),
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 16, top: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 177, 175, 175)
                                    .withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(
                                    1, 0), // changes position of shadow
                              ),
                            ]),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image(
                              image:
                                  NetworkImage(_restaurant.listImange[index])),
                        ),
                      );
                    }),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 230, 0),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 230, 0),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 230, 0),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 230, 0),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 230, 0),
                      size: 20,
                    ),
                    Text(
                      '  (83 Reviews)',
                      style: TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ),
              Text(_restaurant.address,
                  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 48,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 55, 230, 142),
                      ),
                      child: const Center(
                        child: Text(
                          '4/5',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Text(
                      '  Estimated occupied: 80%',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.phone,
                      color: Color.fromARGB(255, 0, 189, 196),
                    ),
                    Text('0966626550'),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.clock,
                      color: Color.fromARGB(255, 0, 189, 196),
                    ),
                    Text(' Open '),
                    Text('Closes '),
                    Text('1AM')
                  ],
                ),
              ),
              const Text(
                'Description',
                style: TextStyle(fontSize: 28),
              ),
              Expanded(
                flex: 4,
                child: Text(
                    'Hornored to be one of Open Tables 2017 Top 100 Restaurant in Bucharest. ${_restaurant.restaurantName} located in the heart of Bucharest is the first people\'s choice fine dining location ...',
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Make a reservation',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 168, 5, 5)),
                        )),
                    const Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See Menu',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAppbar(BuildContext context, Restaurant _restaurant) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft)),
        const Spacer(
          flex: 12,
        ),
        Consumer<RestaurantProvider>(
          builder: (context, restaurant, child) => IconButton(
              onPressed: () => {
                    print(_restaurant.statusLike),
                    restaurant.setLiked(_restaurant.restaurantID)
                  },
              icon: Icon((_restaurant.statusLike == true)
                  ? FontAwesomeIcons.solidHeart
                  : FontAwesomeIcons.heart)),
        ),
      ],
    );
  }
}
