import 'package:flutter/material.dart';
import 'package:social_network_app/blocs/event_bloc.dart';
import 'package:social_network_app/models/event.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:social_network_app/screens/detail_whaton.dart';

class WhatOnItem extends StatelessWidget {
  int id;
  WhatOnItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EventBloC evt = EventBloC();

    return StreamBuilder<Event>(
        stream: evt.eventController.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            evt.getEvent(id);
            return const Center(child: CircularProgressIndicator());
          }
          return Container(
            height: 360,
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(12)),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 243,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(snapshot.data!.pathImage),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            color: snapshot.data!.price.length != 0
                                ? const Color.fromARGB(255, 255, 37, 89)
                                : const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: (snapshot.data!.price.length) != 0
                              ? Text(
                                  '\$ ${snapshot.data!.price}',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                )
                              : const Text(
                                  'FREE',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 117,
                  margin: const EdgeInsets.only(top: 24, left: 24, right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        child: Text(
                            Jiffy(DateFormat('yyyy-MM-dd')
                                    .format(snapshot.data!.timeStart))
                                .yMMMdjm,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 228, 18, 200))),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (ctx) {
                                  return DetailWhatOn(
                                    id: snapshot.data!.id,
                                  );
                                }),
                              );
                            },
                            child: Text(snapshot.data!.name,
                                style: const TextStyle(
                                    fontSize: 24,
                                    color: Color.fromARGB(255, 45, 43, 110),
                                    fontWeight: FontWeight.w900))),
                      ),
                      Text(snapshot.data!.locationName,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 110, 110, 110))),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 4),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  NetworkImage(snapshot.data!.organiser.avatar),
                            ),
                          ),
                          Column(
                            children: [
                              Text(snapshot.data!.organiser.name,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 45, 43, 110),
                                      fontWeight: FontWeight.w900)),
                              Text(snapshot.data!.organiser.lastName)
                            ],
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(44),
                                border: Border.all(
                                    width: 3,
                                    color: snapshot.data!.isLike == true
                                        ? Colors.blueAccent
                                        : Colors.blueAccent)),
                            child: IconButton(
                              onPressed: () {
                                evt.increaseLike(id);
                                // ignore: avoid_print
                                print(snapshot.data!.isLike);
                              },
                              icon: snapshot.data!.isLike == true
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.blueAccent,
                                    )
                                  : const Icon(
                                      Icons.favorite_border,
                                      color: Colors.blueAccent,
                                    ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          );
        });
  }
}
