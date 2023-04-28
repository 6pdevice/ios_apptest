import 'package:flutter/material.dart';
import 'package:practiseflutterproject/utils/constants.dart';
import 'package:practiseflutterproject/utils/size_config.dart';


class NormalText extends StatelessWidget {
  final String text;
  final Color? color;

  final TextEditingController? controller;

  NormalText({
    required this.text,
    this.controller,
    this.color
  }); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
            color: color!=null ? color:kTextColor,
            fontSize: getProportionateScreenWidth(11),
            fontWeight: FontWeight.w700,
            fontFamily: "Muli-Semi-Bold"));
  }
}
