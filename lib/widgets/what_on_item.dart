import 'package:flutter/material.dart';
import 'package:social_network_app/blocs/event_bloc.dart';
import 'package:social_network_app/blocs/event_detail_bloc.dart';
import 'package:social_network_app/models/event.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:social_network_app/screens/detail_whaton.dart';

class WhatOnItem extends StatefulWidget {
  Event event;
  WhatOnItem({Key? key, required this.event}) : super(key: key);

  @override
  State<WhatOnItem> createState() => _WhatOnItem();
}

class _WhatOnItem extends State<WhatOnItem> {
  @override
  Widget build(BuildContext context) {
    // học cách comment code
    EventBloC evt = EventBloC();
    EventDetailBloC _eventDetailBloC = EventDetailBloC();
    return Container(
      width: 327,
      height: 360,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 1,
              offset: const Offset(0, 4),
            ),
          ],
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
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.event.pathImage),
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
                      color: widget.event.price.length != 0
                          ? const Color.fromARGB(255, 255, 37, 89)
                          : const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: (widget.event.price.length) != 0
                        ? Text(
                            '\$ ${widget.event.price}',
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)),
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
                              .format(widget.event.timeStart))
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
                          MaterialPageRoute(builder: (context) {
                            return DetailWhatOn(
                              id: widget.event.id,
                            );
                          }),
                        );
                      },
                      child: Text(widget.event.name,
                          style: const TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 45, 43, 110),
                              fontWeight: FontWeight.w900))),
                ),
                Text(widget.event.locationName,
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
                            NetworkImage(widget.event.organiser.avatar),
                      ),
                    ),
                    Column(
                      children: [
                        Text(widget.event.organiser.name,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 45, 43, 110),
                                fontWeight: FontWeight.w900)),
                        Text(widget.event.organiser.lastName)
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(44),
                          border: Border.all(
                              width: 3,
                              color: widget.event.isLike == true
                                  ? Colors.blueAccent
                                  : Colors.blueAccent)),
                      // có thể sử dụng stream
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _eventDetailBloC.increaseLike(widget.event.id);
                          });
                        },
                        icon: widget.event.isLike == true
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
  }
}
