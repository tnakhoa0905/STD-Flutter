import 'package:flutter/material.dart';
import 'package:hotel_app/models/hotel.dart';
import 'package:hotel_app/models/review.dart';
import 'package:hotel_app/widgets/comment.dart';

import '../widgets/comment_item.dart';

// ignore: must_be_immutable
class HotelDetail extends StatefulWidget {
  Hotel hotel;
  HotelDetail({Key? key, required this.hotel}) : super(key: key);

  @override
  State<HotelDetail> createState() => _HotelDetail();
}

// ignore: must_be_immutable
class _HotelDetail extends State<HotelDetail> {
  // String image =
  //     "https://s3-alpha-sig.figma.com/img/0689/5458/8ea3583b768a1996bfa2f07e0256dcb5?Expires=1657497600&Signature=HUE4mDyxauZEYybxgq0ZC0LsZ2UiUuCtBrpSslKBkd7nXlLn2W~76UEqukpikN~HT40oIAIB2EMNJixCJ8XBYctDblfKdaUXib7uxoB3tGwTrjBzP0fc5ySTCKcle57yqYT5c9JM6DRI-66Z733ZQVmHI4G7G7E8m50S30LGBtOnWNGMxnDQwpIZPZAPz62oobWpi73JKceRZhY8h0cInADRZ1MM0-U5hPHWHRE2460kKdgykmyIWaArbgo~uW-U95ApdQN9WN~jgfLV1rDUyCL3BI7ZcJ13qIEEvxBCqObkBUNuW2XXXxQKnJp-ptwDn6CCA~sQYbVgqyRTsN7lUQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        child: Stack(
          children: [
            SizedBox(
              height: 388,
              width: double.infinity,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.hotel.pathImage)),
            ),
            Positioned(
              top: 28,
              left: 10,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
            Positioned(
              top: 36,
              right: 16,
              child: GestureDetector(
                onTap: () {},
                child: const Image(
                    image: AssetImage('assets/image/detail_screen/save.png')),
              ),
            ),
            Positioned(
              top: 36,
              right: 52,
              child: GestureDetector(
                onTap: () {},
                child: const Image(
                    image: AssetImage('assets/image/detail_screen/share.png')),
              ),
            ),
            Positioned(
              top: 348,
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 358,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        widget.hotel.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate,
                            color: Color.fromARGB(255, 248, 208, 0),
                            size: 16,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color.fromARGB(255, 248, 208, 0),
                            size: 16,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color.fromARGB(255, 248, 208, 0),
                            size: 16,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color.fromARGB(255, 248, 208, 0),
                            size: 16,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color.fromARGB(255, 248, 208, 0),
                            size: 16,
                          ),
                          Text(
                            ' 5.0 (${widget.hotel.numberReviews} reviews)',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.place_rounded,
                            color: Color.fromARGB(255, 154, 154, 154),
                            size: 16,
                          ),
                          Text(
                            widget.hotel.address,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 154, 154, 154)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.hotel.description,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          buildBottomSheetComment(context),
                          const Spacer(),
                          const Text(
                            'See more',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      // const SizedBox(
                      //   height: 8,
                      // ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => buildComment(
                            context,
                            widget.hotel.reviews[index],
                            widget.hotel.reviews[index].idUser),
                        itemCount: widget.hotel.reviews.length,
                      ),
                    ])),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
