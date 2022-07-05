import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/user_bloC.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/screens/hotel_detail.dart';

class Discover extends StatelessWidget {
  Discover({Key? key}) : super(key: key);
  final UserBloC _userBloC = UserBloC();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Discover'),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                icon: const Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Hotel> listSuggestions = hotels.where((element) {
      final result = element.name.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    // TODO: implement buildSuggestions
    return ListView.builder(
        itemCount: listSuggestions.length,
        itemBuilder: (context, index) {
          final suggestion = listSuggestions[index];
          return ListTile(
            title: Text(suggestion.name),
            onTap: () {
              print('khoa');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => HotelDetail(
                            hotel: suggestion,
                          ))));
            },
          );
        });
  }
}
