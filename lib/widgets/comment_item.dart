import 'package:flutter/material.dart';
import 'package:hotel_app/bloC/user_bloC.dart';

import '../models/review.dart';
import '../models/user.dart' as modelUser;

Widget buildComment(BuildContext context, Review review, String uid) {
  UserBloC userBloC = UserBloC();
  userBloC.getUser(review.idUser);

  return StreamBuilder<modelUser.User>(
      stream: userBloC.userStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final user = snapshot.data!;
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(user.avt, scale: 1),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user.name),
                      SizedBox(
                        height: 14,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: review.rating,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star_rate,
                            color: Color.fromARGB(255, 248, 208, 0),
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text('${review.isLiked} '),
                  const Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(review.description),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        );
      });
}
