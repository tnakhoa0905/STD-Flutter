import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/review_bloC.dart';
import 'package:hotel_app/models/review.dart';

TextButton buildBottomSheetComment(
    BuildContext context, String hotelId, String uid) {
  TextEditingController _description = TextEditingController();
  TextEditingController _rating = TextEditingController();
  TextEditingController _isLiked = TextEditingController();
  ReviewBloC reviewBloC = ReviewBloC();
  return TextButton(
    onPressed: () => showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) => Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              height: MediaQuery.of(context).size.height * 2 / 3,
              // color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      child: TextField(
                        controller: _description,
                        // obscureText: true,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154),
                            fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 16, top: 20, bottom: 20),
                            hintText: "Comment",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextField(
                        controller: _rating,
                        // obscureText: true,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154),
                            fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 16, top: 20, bottom: 20),
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: TextField(
                        controller: _isLiked,
                        // obscureText: true,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154),
                            fontSize: 14),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                left: 16, top: 20, bottom: 20),
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0))),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      child: const Text('Send'),
                      onPressed: () {
                        Review review = Review(
                            description: _description.text,
                            rating: int.parse(_rating.text),
                            idUser: uid);
                        reviewBloC.addReview(hotelId, review);

                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      child: const Text('Close BottomSheet'),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              ),
            )),
    child: const Text('Reviews',
        style: TextStyle(
            color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w600)),
  );
}
