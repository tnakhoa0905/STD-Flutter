import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/blocs/restaurant_bloc.dart';
import 'package:restaurant_app/providers/retaurant_provider.dart';
import 'package:restaurant_app/screens/detail_retaurant.dart';

import '../models/restaurant.dart';

class RestaurantItem extends StatelessWidget {
  final int restaurantID;
  const RestaurantItem({Key? key, required this.restaurantID})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Restaurant _restaurant =
        Provider.of<RestaurantProvider>(context, listen: false)
            .getRestaurant(restaurantID)!;
    // TODO: implement build
    return Container(
      height: 132,
      margin: const EdgeInsets.only(bottom: 16, top: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                SizedBox(
                  width: 160,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    child: Image(
                      image: NetworkImage(_restaurant.image, scale: 1),
                    ),
                  ),
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
            ),
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_restaurant.restaurantName,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 20)),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 230, 0),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 230, 0),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 230, 0),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 230, 0),
                        ),
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 230, 0),
                        ),
                      ],
                    ),
                    Text(_restaurant.address,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16)),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 169, 187, 169))),
                      onPressed: () {
                        //TODO:
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) {
                            return DetailRestaurant(
                              restaurantID: _restaurant.restaurantID,
                            );
                          }),
                        );
                      },
                      child: const Text(
                        "Xem Thêm",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
    // Container(
    //   margin: const EdgeInsets.only(bottom: 16),
    //   decoration: BoxDecoration(
    //       color: const Color.fromARGB(255, 100, 90, 90),
    //       borderRadius: BorderRadius.circular(20)),
    //   child: Column(children: [
    //     IconButton(
    //         onPressed: () => rBloC.increaseLike(restaurant.restaurantID),
    //         icon: Icon((restaurant.statusLike == true)
    //             ? FontAwesomeIcons.solidHeart
    //             : FontAwesomeIcons.heart)),
    //     StreamBuilder<Restaurant>(
    //         stream: rBloC.restaurantController.stream,
    //         builder: (context, snapshot) {
    //           return Text('${restaurant.like}');
    //         }),
    //     //TODO: padding container
    //     Padding(
    //       padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
    //       child: ClipRRect(
    //         borderRadius: const BorderRadius.only(
    //             topLeft: Radius.circular(16), topRight: Radius.circular(16)),
    //         child: Image(
    //           image: NetworkImage(restaurant.image, scale: 1),
    //         ),
    //       ),
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8),
    //       child: Row(
    //         children: [
    //           Expanded(
    //             flex: 5,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(restaurant.restaurantName,
    //                     style: const TextStyle(
    //                         color: Color.fromARGB(255, 255, 255, 255),
    //                         fontSize: 20)),
    //                 Text(restaurant.address,
    //                     style: const TextStyle(
    //                         overflow: TextOverflow.ellipsis,
    //                         color: Color.fromARGB(255, 255, 255, 255),
    //                         fontSize: 16)),
    //               ],
    //             ),
    //           ),
    //           Expanded(
    //             flex: 2,
    //             child: SizedBox(
    //               //TODO: nghiên cứu thêm
    //               // width: 100,
    //               height: 40,
    //               child: ElevatedButton(
    //                 style: ButtonStyle(
    //                     backgroundColor: MaterialStateProperty.all<Color>(
    //                         const Color.fromARGB(255, 169, 187, 169))),
    //                 onPressed: () {
    //                   //TODO:
    //                   Navigator.push(
    //                     context,
    //                     MaterialPageRoute(
    //                         builder: (context) => DetailRestaurant(
    //                               id: restaurant.restaurantID,
    //                             )),
    //                   );
    //                 },
    //                 child: const Text(
    //                   "Xem Thêm",
    //                   style: TextStyle(fontSize: 12),
    //                 ),
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     )
    //   ]),
    // );
  }
}
