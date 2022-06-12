import 'package:flutter/material.dart';

class HotelItem extends StatelessWidget {
  const HotelItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
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
        Stack(
          children: const [
            SizedBox(
              width: 350,
              height: 162,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/0689/5458/8ea3583b768a1996bfa2f07e0256dcb5?Expires=1655078400&Signature=LV7CaieIaMbcZ3L94ZbT2kR~H9gjiQ8h7Q4CSyyVBSCy1v83e36o3rp8EddIowUpp9naz9ldKo3piviDXqCbw6a~6b422iBJ4byQdwuHVg41JHNi7asrfxgsN~OLtExrJJ04rI9OYlDY7PkRnuGd7IsM5KI0-ZzRtlL8QM~PkJNK6Pe1Rb2Hn06uoQ6S3EMRn00chEzgfGHybsVSE7RdARiyhMygde4F3Hn1-Fo3eJiMvynkSCZDEDlJCDbvXtSzwJc6pxagwCfhUhJsCgK4TZZzyf2PVZsFLTN9TfQoDBOfDY6Z9lanHOpac~qP~6LhHomTrVLhSCHiIy8x9IuTRw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA')),
              ),
            ),
            Positioned(
                top: 8,
                right: 8,
                child:
                    Image(image: AssetImage('/image/detail_screen/save.png')))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: const [
            Text(
              'Leslie Alexander',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Icon(
              Icons.star_rate,
              color: Color.fromARGB(255, 248, 208, 0),
              size: 14,
            ),
            Icon(
              Icons.star_rate,
              color: Color.fromARGB(255, 248, 208, 0),
              size: 14,
            ),
            Icon(
              Icons.star_rate,
              color: Color.fromARGB(255, 248, 208, 0),
              size: 14,
            ),
            Icon(
              Icons.star_rate,
              color: Color.fromARGB(255, 248, 208, 0),
              size: 14,
            ),
            Icon(
              Icons.star_rate,
              color: Color.fromARGB(255, 248, 208, 0),
              size: 14,
            ),
            Text(
              ' 5.0',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            )
          ],
        ),
        const SizedBox(
          height: 6,
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
        )
      ]),
    );
  }
}
