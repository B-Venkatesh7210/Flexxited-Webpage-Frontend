import 'package:flutter/material.dart';
import 'package:flutter_web_assignment/helpers/helpers.dart';

class TextFieldWidget extends StatelessWidget {
  double height;
  final String text;
  TextFieldWidget({
    required this.height,
    required this.text,
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width / 4,
      height: height,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black54, offset: Offset(2.0, 2.0), blurRadius: 3)
      ]),
      child: Text(
        text,
        style: kTextTheme(context).subtitle2!.copyWith(color: Colors.grey[700]),
      ),
    );
  }
}
