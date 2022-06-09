import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:social_network_app/blocs/event_bloc.dart';
import 'package:social_network_app/models/event.dart';

import '../blocs/event_detail_bloc.dart';

class DetailWhatOn extends StatefulWidget {
  int id;
  DetailWhatOn({Key? key, required this.id}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DetailWhatOn();
}

class _DetailWhatOn extends State<DetailWhatOn> {
  bool showmore = false;
  EventDetailBloC evt = EventDetailBloC();
  @override
  Widget build(BuildContext context) {
    evt.getEvent(widget.id);
    return SafeArea(
        child: Scaffold(
      body: StreamBuilder<Event>(
          stream: evt.eventStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 4, child: buildDetailWhatOnBar(context, snapshot)),
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 24, left: 24, right: 24),
                      child: SingleChildScrollView(
                          child: buildDetailApp(context, snapshot)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: 80,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('RSVP'),
                      ),
                    ),
                  ),
                ]);
          }),
    ));
  }

  Widget buildDetailWhatOnBar(
      BuildContext context, AsyncSnapshot<Event> snapshot) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(snapshot.data!.pathImage),
        ),
      ),
      child: Stack(
        children: [
          // Image(image: NetworkImage(snapshot.data!.pathImage)),
          Positioned(
            top: 24,
            left: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.close,
                  color: Color.fromARGB(255, 20, 114, 255),
                  size: 24,
                ),
              ),
            ),
          ),
          Positioned(
            top: 24,
            right: 24,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.event,
                  color: Color.fromARGB(255, 20, 114, 255),
                  size: 24,
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 24,
            child: Container(
              width: 80,
              height: 32,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                  child: Text(
                'FREE',
                style: TextStyle(fontWeight: FontWeight.w900),
              )),
            ),
          )
        ],
      ),
    );
  }

  Widget buildDetailApp(BuildContext ctx, AsyncSnapshot<Event> snapshot) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Jiffy(DateFormat('yyyy-MM-dd').format(snapshot.data!.timeStart))
              .yMMMd,
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 37, 89), fontSize: 24),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(snapshot.data!.name,
            style: const TextStyle(
                color: Color.fromARGB(255, 7, 23, 146), fontSize: 28)),
        const SizedBox(
          height: 4,
        ),
        Text(snapshot.data!.locationName,
            style: const TextStyle(
                color: Color.fromARGB(255, 92, 92, 92), fontSize: 20)),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 237, 239, 244),
                onPrimary: Colors.white,
                shadowColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                minimumSize: const Size(167, 56), //////// HERE
              ),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.done,
                    size: 16,
                    color: Color.fromARGB(255, 0, 5, 250),
                  ),
                  Text('I\'m going!',
                      style: TextStyle(
                          color: Color.fromARGB(255, 14, 14, 14),
                          fontSize: 18)),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 237, 239, 244),
                onPrimary: Colors.white,
                shadowColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                minimumSize: const Size(68, 56), //////// HERE
              ),
              onPressed: () {
                evt.increaseLike(snapshot.data!.id);
                print(snapshot.data!.isLike);
              },
              child: snapshot.data!.isLike == true
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.blueAccent,
                    )
                  : const Icon(
                      Icons.favorite_border,
                      color: Colors.blueAccent,
                    ),
              // child: const Icon(
              //   Icons.favorite_sharp,
              //   size: 16,
              //   color: Color.fromARGB(255, 0, 5, 250),
              // ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 237, 239, 244),
                onPrimary: Colors.white,
                shadowColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                minimumSize: const Size(68, 56), //////// HERE
              ),
              onPressed: () {},
              child: const Icon(
                Icons.share,
                size: 16,
                color: Color.fromARGB(255, 0, 5, 250),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 23,
        ),
        Row(
          children: [
            const Icon(
              Icons.group,
              size: 16,
              color: Color.fromARGB(255, 0, 5, 250),
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: ' 42 people are going including ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  TextSpan(
                      text: '2 friends',
                      style: TextStyle(
                          color: Color.fromARGB(255, 74, 77, 248),
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 19,
        ),
        Container(
          height: 2,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 237, 239, 244)),
        ),
        const SizedBox(
          height: 24,
        ),
        buildShowMore(snapshot.data!.description),
        const SizedBox(
          height: 16,
        ),
        TextButton(
            onPressed: () => setState(() {
                  showmore = !showmore;
                }),
            child: showmore == false
                ? const Text(
                    'Show more',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )
                : const Text(
                    'Show less',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const CircleAvatar(
              radius: 37,
              backgroundImage: AssetImage('assets/images/icon_app.png'),
            ),
            const Text(
              'Suede',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 237, 239, 244),
                onPrimary: Colors.white,
                shadowColor: const Color.fromARGB(255, 255, 255, 255),
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                minimumSize: const Size(133, 32), //////// HERE
              ),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.add,
                    size: 16,
                    color: Color.fromARGB(255, 0, 5, 250),
                  ),
                  Text('Invite friends',
                      style: TextStyle(
                          color: Color.fromARGB(255, 14, 14, 14),
                          fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          height: 2,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 237, 239, 244)),
        ),
        const SizedBox(
          height: 24,
        ),
        const Text('Friends attending'),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Align(
                      widthFactor: 0.7,
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/screen.jpg'),
                      ),
                    ),
                    Align(
                      widthFactor: 0.7,
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/screen.jpg'),
                      ),
                    ),
                    Align(
                      widthFactor: 0.7,
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/screen.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 237, 239, 244),
                  onPrimary: Colors.white,
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  minimumSize: const Size(133, 32), //////// HERE
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      size: 16,
                      color: Color.fromARGB(255, 0, 5, 250),
                    ),
                    Text('Invite friends',
                        style: TextStyle(
                            color: Color.fromARGB(255, 14, 14, 14),
                            fontSize: 18)),
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }

  Widget buildShowMore(String text) {
    final maxLines = showmore ? null : 5;
    final overflow = showmore ? TextOverflow.visible : TextOverflow.ellipsis;
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}
