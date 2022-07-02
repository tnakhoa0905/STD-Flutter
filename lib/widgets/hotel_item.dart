import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/hotel_bloC.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/screens/hotel_detail.dart';

class HotelItem extends StatefulWidget {
  HotelItem({Key? key, required this.hotel}) : super(key: key);
  Hotel hotel;
  @override
  State<HotelItem> createState() => _HotelItem();
}

class _HotelItem extends State<HotelItem> {
  HotelBloC hotelBloC = HotelBloC();

  @override
  Widget build(BuildContext context) {
    // print(widget.hotel.reviews[0].description);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => HotelDetail(
                      hotel: widget.hotel,
                    ))));
      },
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              //TODO:về sửa giống figma
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 1,
                offset: const Offset(0.5, 0.5),
              )
            ],
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(16)),
        width: 382,
        height: 259,
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        margin: const EdgeInsets.fromLTRB(2, 2, 2, 16),
        child: Column(children: [
          //TODO: chia nhỏ return widget
          //TODO: sửa UI, chia nhỏ các sessions
          // Text(widget.hotel.reviews[0].description),
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 162,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.hotel.pathImage)),
                ),
              ),
              Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () {
                      hotelBloC.save(widget.hotel.id);
                      setState(() {});
                    },
                    child: widget.hotel.isLiked == false
                        ? Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: const Image(
                                height: 16,
                                image: AssetImage(
                                    'assets/image/detail_screen/save.png')),
                          )
                        : Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: const Image(
                                height: 16,
                                image: AssetImage(
                                    'assets/image/detail_screen/saved.png')),
                          ),
                  ))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                widget.hotel.name,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              SizedBox(
                height: 14,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.hotel.ratingStar,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star_rate,
                    color: Color.fromARGB(255, 248, 208, 0),
                    size: 12,
                  ),
                ),
              ),
              Text(
                ' ${widget.hotel.ratingStar}.0',
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              const Icon(
                Icons.place_rounded,
                color: const Color.fromARGB(255, 154, 154, 154),
                size: 16,
              ),
              Text(
                widget.hotel.address,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 154, 154, 154)),
              )
            ],
          )
        ]),
      ),
    );
  }
}
