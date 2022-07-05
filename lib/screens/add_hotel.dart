import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/add_hotel_bloC.dart';
import 'package:hotel_app/bloC/hotel_bloC.dart';
import 'package:hotel_app/bloC/image_bloC.dart';
import 'package:hotel_app/firebase/firebase_storage.dart';
import 'package:hotel_app/models/hotel.dart';

class AddHotel extends StatelessWidget {
  AddHotelBloC addHotelBloc = AddHotelBloC();
  HotelBloC hotelBloC = HotelBloC();
  final ImageBloC _imageBloC = ImageBloC();
  File? file;
  final TextEditingController _hotelname = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _pathImage = TextEditingController(
      text:
          'https://s3-alpha-sig.figma.com/img/4d6d/2b57/e2b6311fbb092d48ee3db174a3c83ce5?Expires=1656288000&Signature=IC3zgw~0pc7Hg~tS~KaMEyhYku0Iecftw~NKtlF0SKjFVMNtnoYt8CgSaciySV6VmzvbwusXeQgBq82~tIkxrD87ucyQK7A8hSBY8uMURC6-Xhv0VNR4Jv12aDoG3xApFlKwJJ-~ElS5I3xuO4yhXVhqspw5bIj0aisE-RXMrozJYfgQ4vZ0~DY63nMwQ3OVn3nRBB6ulWMq9P69k3Dtm2qAV01hvjC1oQ-ypICEajifazd6DuubmzUpLwm9dzTTAUT1-II8s6FGlSy5120iGYLzbg-dPV--4w3pBgT~bzznRh5Xug4oKVfpQpYp2KoQ3dnb0keLlsYHOcI6EhJkwg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA');
  final TextEditingController _description = TextEditingController();

  AddHotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          buildAddHotelBar(context),
          buildAddHotel(context),
          buildBottomBar(context)
        ]),
      ),
    ));
  }

  Widget buildAddHotelBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined)),
        const Text(
          'Add Hotel',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Icon(
          Icons.arrow_back_outlined,
          color: Color.fromARGB(255, 250, 251, 255),
        )
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
              controller: _hotelname,
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
              controller: _address,
              keyboardType: TextInputType.multiline,
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
              controller: _description,
              keyboardType: TextInputType.multiline,
              minLines: 1,
              maxLines: 5,
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
          StreamBuilder<File?>(
              stream: _imageBloC.imagePath,
              builder: (context, snapshot) {
                final imageFile = snapshot.data;
                file = imageFile;
                print(file);
                return imageFile == null
                    ? DottedBorder(
                        color: Colors.grey,
                        strokeWidth: 1,
                        dashPattern: const [8, 4],
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(8),
                        child: InkWell(
                          onTap: () {
                            _imageBloC.pickImage();
                          },
                          child: GestureDetector(
                            onTap: () => _imageBloC.pickImage(),
                            child: SizedBox(
                              width: 139,
                              height: 139,
                              child: Center(
                                  child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                      'assets/image/add_hotel/gallery.png',
                                      height: 24),
                                  const SizedBox(height: 5),
                                  const Text('Add image', style: TextStyle())
                                ],
                              )),
                            ),
                          ),
                        ),
                      )
                    : ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        child: Image.file(
                          imageFile,
                          height: 162,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ));
              }),
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
                  onPressed: () async {
                    await Storage().uploadAndGetImageLink('khoa', file!);
                    Navigator.pop(context);
                  },
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
                  onPressed: () async {
                    Hotel hotel = Hotel(
                        id: '0',
                        name: _hotelname.text,
                        address: _address.text,
                        pathImage: await Storage()
                            .uploadAndGetImageLink('khoa', file!),
                        description: _description.text,
                        ratingStar: 0,
                        numberReviews: 0,
                        isLiked: false,
                        reviews: [],
                        users: [],
                        lon: 16,
                        lat: 16);
                    await addHotelBloc.createHotel(hotel);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  )))
        ],
      ),
    );
  }
}
