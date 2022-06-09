// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_app/base_api/test_api.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_network_app/blocs/event_bloc.dart';
import 'package:social_network_app/models/event.dart';

import '../widgets/what_on_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  EventBloC eventBloC = EventBloC();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: Padding(
            padding: const EdgeInsets.all(24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // tỉ lệ widget cha tại răng ko sử dụng fexible
              Expanded(flex: 1, child: buildTitle(context)),
              Expanded(flex: 11, child: buildList(context, eventBloC))
            ])),
        bottomNavigationBar: buildBottomNavigationBar(context),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            getAPI();
          },
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 20, 114, 255),
            size: 32,
          )),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.event,
              color: Color.fromARGB(255, 20, 114, 255), size: 32),
        )
      ],
    );
  }

  Widget buildTitle(BuildContext ctx) {
    return const Text(
      'What\'s on',
      style: TextStyle(fontSize: 32, color: Color.fromARGB(255, 11, 2, 134)),
    );
  }

  Widget buildList(BuildContext ctx, EventBloC evt) {
    evt.getlist();
    return StreamBuilder<List<Event>>(
      stream: evt.listEventStream,
      builder: (ctx, snapshot) {
        if (snapshot.data != null) {
          List<Event> listEvents = snapshot.data!;
          return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: listEvents.length,
              itemBuilder: (context, index) => WhatOnItem(
                    event: listEvents[index],
                  ));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage('assets/images/whaton.png')),
          label: 'What\'s on',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.vertical_distribute,
          ),
          label: 'Timetable',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
      ],
    );
  }
}
