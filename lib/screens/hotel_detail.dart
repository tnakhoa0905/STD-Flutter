import 'package:flutter/material.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({Key? key}) : super(key: key);

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
                      'https://s3-alpha-sig.figma.com/img/4d6d/2b57/e2b6311fbb092d48ee3db174a3c83ce5?Expires=1656288000&Signature=IC3zgw~0pc7Hg~tS~KaMEyhYku0Iecftw~NKtlF0SKjFVMNtnoYt8CgSaciySV6VmzvbwusXeQgBq82~tIkxrD87ucyQK7A8hSBY8uMURC6-Xhv0VNR4Jv12aDoG3xApFlKwJJ-~ElS5I3xuO4yhXVhqspw5bIj0aisE-RXMrozJYfgQ4vZ0~DY63nMwQ3OVn3nRBB6ulWMq9P69k3Dtm2qAV01hvjC1oQ-ypICEajifazd6DuubmzUpLwm9dzTTAUT1-II8s6FGlSy5120iGYLzbg-dPV--4w3pBgT~bzznRh5Xug4oKVfpQpYp2KoQ3dnb0keLlsYHOcI6EhJkwg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA')),
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
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => buildComment(context),
                        itemCount: 6,
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
                    'https://s3-alpha-sig.figma.com/img/4d6d/2b57/e2b6311fbb092d48ee3db174a3c83ce5?Expires=1656288000&Signature=IC3zgw~0pc7Hg~tS~KaMEyhYku0Iecftw~NKtlF0SKjFVMNtnoYt8CgSaciySV6VmzvbwusXeQgBq82~tIkxrD87ucyQK7A8hSBY8uMURC6-Xhv0VNR4Jv12aDoG3xApFlKwJJ-~ElS5I3xuO4yhXVhqspw5bIj0aisE-RXMrozJYfgQ4vZ0~DY63nMwQ3OVn3nRBB6ulWMq9P69k3Dtm2qAV01hvjC1oQ-ypICEajifazd6DuubmzUpLwm9dzTTAUT1-II8s6FGlSy5120iGYLzbg-dPV--4w3pBgT~bzznRh5Xug4oKVfpQpYp2KoQ3dnb0keLlsYHOcI6EhJkwg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                    scale: 1),
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
