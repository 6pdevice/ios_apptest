import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/size_config.dart';

class RichText extends StatelessWidget {
  final dynamic text;
  final Color? color;

  final TextEditingController? controller;

  RichText({
    required this.text,
    this.controller,
    this.color
  }); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan( ),
        style: TextStyle(
            color: color!=null ? color:kTextColor,
            fontSize: getProportionateScreenWidth(11),
            fontWeight: FontWeight.w700,
            fontFamily: "Muli-Semi-Bold"));
  }
}
