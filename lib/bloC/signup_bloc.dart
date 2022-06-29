import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_app/models/user.dart';

class SignUpBloC {
  void signUp(User user, String id) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc('id');
    user.id = id;
    final json = user.toJson();
    await docUser
        .set(json)
        .then((value) => print("User added"))
        .catchError((onError) => print(onError));
  }
}
