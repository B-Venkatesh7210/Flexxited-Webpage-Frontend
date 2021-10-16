import 'package:flutter/material.dart';
import 'package:flutter_web_assignment/helpers/helpers.dart';

class Page2Widget extends StatelessWidget {
  final String img;
  final String text;
  const Page2Widget({
    required this.img,
    required this.text,
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final size = mediaSize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      width: size.width / 4.5,
      height: size.height / 1.75,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(3.0, 3.0),
              blurRadius: 5,
            )
          ],
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            height: size.height / 6,
            child: Image.asset(
              kImagePath + img,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 20),
          Text(
            text,
            style: kTextTheme(context).bodyText1,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Lorem ipsum dolor sit amet',
            style: kTextTheme(context).subtitle1,
          ),
          Text(
            'Lorem ipsum dolor sit amet',
            style: kTextTheme(context).subtitle1,
          ),
          Text(
            'Lorem ipsum dolor sit amet',
            style: kTextTheme(context).subtitle1,
          ),
          Text(
            'Lorem ipsum dolor sit amet',
            style: kTextTheme(context).subtitle1,
          ),
          SizedBox(height: 30),
          Container(
            height: 30,
            width: 120,
            decoration: BoxDecoration(color: Color.fromRGBO(44, 44, 44, 1)),
            child: Center(
              child: Text(
                'Join As',
                style:
                    kTextTheme(context).overline!.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
