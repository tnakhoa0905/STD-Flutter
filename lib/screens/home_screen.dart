import 'package:flutter/material.dart';
import 'package:hotel_app/widgets/hotel_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 251, 255),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          children: [
            buildAppBar(context),
            const SizedBox(
              height: 28,
            ),
            Expanded(child: buildListHotel(context)),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    ));
  }

  Widget buildAppBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(32, 0, 32, 0),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Hello Linh',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            RichText(
              text: const TextSpan(
                  text: 'Explore ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text: 'New Hotels',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 87, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.w600))
                  ]),
            )
          ]),
          const Spacer(),
          GestureDetector(
            onTap: (() => {print('object')}),
            child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1)),
                child: const Icon(
                  Icons.add,
                  size: 16,
                )),
          )
        ],
      ),
    );
  }

  Widget buildListHotel(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: ((context, index) => HotelItem()),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ]);
  }
}
