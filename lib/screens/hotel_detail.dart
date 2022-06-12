import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        child: Stack(
          children: [
            const SizedBox(
              height: 388,
              width: double.infinity,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/b6ea/7841/1631b2d8bb1a0fcf512ac21b67bad8a0?Expires=1655078400&Signature=OQJSLOyYaMCYhKskwjaBPr7FZhPrmn1imIljgbxjqxhVxaeyAe-ApQn9lwM9joE0W5MZQ26wIXLD8FvbUPjYPe9PdlvumISWE~aDoIa3XpQeTC8cOnhitlldXcOa4jIVVt5iqIywTws3EnYOE5md~9fXmx0rRliB7J2H-9Fk462fV6D-40VakWOk4f1uwAzRmTRGgGlvgRV4tySc9bINNueHgRGWJm10N0SQCQncAGv3mdqP37wt98V5cAjMKlZgUJvlSA2wYEgP-JGQMQT1GP4Tb6evnGZKKltqqpJGgXuGOTpMAsI~FPXcDyoSNegQyVwHDBxWFPQ3Tw~YWUy-sQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA')),
            ),
            Positioned(
              top: 28,
              left: 10,
              child: IconButton(
                  onPressed: () {},
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
                    image: AssetImage('/image/detail_screen/save.png')),
              ),
            ),
            Positioned(
              top: 36,
              right: 52,
              child: GestureDetector(
                onTap: () {},
                child: const Image(
                    image: AssetImage('/image/detail_screen/share.png')),
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
                      const Text(
                        'Leslie Alexander',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
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
                            ' 5.0 (1,2k reviews)',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.place_rounded,
                            color: Color.fromARGB(255, 154, 154, 154),
                            size: 16,
                          ),
                          Text(
                            '  1901 Thornridge Cir. Shiloh, Hawaii 81063',
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
                      const Text(
                        'Located in Marco Island, Marriott\'s Crystal Shores is near the beach. The area\'s natural beauty can be seen at Marco Beach and Tigertail Beach. Traveling with kids? Consider Marco Golf and... read more',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: const [
                          Text('Reviews',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                          Spacer(),
                          Text(
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
                      GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: (context, index) => buildComment(context),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: MediaQuery.of(context).size.width,
                          childAspectRatio: 1.0,
                          // crossAxisSpacing: 20,
                          // mainAxisSpacing: 20,
                          mainAxisExtent: 112,
                        ),
                      ),
                    ])),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget buildComment(BuildContext context) {
    return Container(
      height: 102,
      child: Column(
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
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://s3-alpha-sig.figma.com/img/824b/f7b5/3ded6970930811705424c6598a268093?Expires=1655078400&Signature=MSEFWa2W1TM1hGd1S2-6La2M4bwaT7ICSHpdfChNu5cGPqhtMEnRP8mhUoOnSeFN1lBD60-aH3oMb9OQX4VnidXcqVkpuKaOEF0VGyqJ6XFY5ZcSwYdPjH2RHa7ns9Fh6xdirhIRrRevi728Puv~lG3aPOz7dSjgwlUqJulMUcvV4Moe911Yjo6p3-vuTHZWj4vLV1dpf2MDQBcKvFcK~MPKfSZXNqTdvCBtMZAYGaJh63PoYbmvpGeJPxDjJFuhZ3UaWBtU7wUmDFJgIjLfzNGjqQX--qI58E7FJCBbDwLiGQWpxjmx6guhcfpEnRNps4TIlr~QnKOGcK3ii3UUGA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA'),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Siuska G.'),
                  Row(
                    children: const [
                      Icon(
                        Icons.star_rate,
                        color: Color.fromARGB(255, 248, 208, 0),
                        size: 12,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color.fromARGB(255, 248, 208, 0),
                        size: 12,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color.fromARGB(255, 248, 208, 0),
                        size: 12,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color.fromARGB(255, 248, 208, 0),
                        size: 12,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color.fromARGB(255, 248, 208, 0),
                        size: 12,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Text('12  '),
              const Icon(
                Icons.thumb_up,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
              'The house was really comfortable .Everything was clean and organized. I do recommended.')
        ],
      ),
    );
  }
}
