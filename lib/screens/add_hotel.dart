import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        Flexible(flex: 1, child: buildAddHotelBar(context)),
        Flexible(flex: 8, child: buildAddHotel(context)),
        Flexible(flex: 1, child: buildBottomBar(context))
      ]),
    ));
  }

  Widget buildAddHotelBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_outlined)),
        const Text(
          'Add Hotel',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Text('')
      ],
    );
  }

  Widget buildAddHotel(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Hotel Name',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: TextField(
              obscureText: true,
              style: const TextStyle(
                  color: Color.fromARGB(255, 154, 154, 154), fontSize: 14),
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 16, top: 20, bottom: 20),
                  hintText: "Input for hotel name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Do not exceed 40 characters when entering.',
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Address',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: TextField(
              obscureText: true,
              style: const TextStyle(
                  color: Color.fromARGB(255, 154, 154, 154), fontSize: 14),
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 16, top: 20, bottom: 20),
                  hintText: "Input for address",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Description',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            child: TextField(
              obscureText: true,
              style: const TextStyle(
                  color: Color.fromARGB(255, 154, 154, 154), fontSize: 14),
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 16, top: 20, bottom: 20),
                  hintText: "Input for description",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Hotel Image',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget buildBottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 108,
              height: 53,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ))),
                  onPressed: () {},
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ))),
          SizedBox(
              width: 212,
              height: 53,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 0, 87, 255)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ))),
                  onPressed: () {},
                  child: const Text(
                    'Done',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )))
        ],
      ),
    );
  }
}
