import 'package:flutter/material.dart';

Size mediaSize(BuildContext context) => MediaQuery.of(context).size;
const String kLogoPath = 'assets/logos/';
const String kImagePath = 'assets/images/';
TextTheme kTextTheme (BuildContext context) {
  return Theme.of(context).textTheme;
}
