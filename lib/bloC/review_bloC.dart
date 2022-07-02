import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hotel_app/models/review.dart';

class ReviewBloC {
  StreamController<List<Review>> _listReviewController =
      StreamController<List<Review>>();
  Stream<List<Review>> get listReviewStream => _listReviewController.stream;

  void getListReview(List<Review> reviews) {
    _listReviewController.sink.add(reviews);
  }

  Future addReview(String hotelId, Review review) async {
    listReviews.add(review);
    _listReviewController.sink.add(listReviews);
    final hotelDoc =
        FirebaseFirestore.instance.collection('hotels').doc(hotelId);
    await hotelDoc
        .update({
          "reviews": FieldValue.arrayUnion([review.toJson()])
        })
        .then((value) => print('ok'))
        .catchError((onError) => print(onError));
  }
}
