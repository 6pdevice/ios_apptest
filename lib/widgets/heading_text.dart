import 'package:flutter/material.dart';
import 'package:practiseflutterproject/utils/constants.dart';
import 'package:practiseflutterproject/utils/size_config.dart';


class HeadingText extends StatelessWidget {
  final String text;

  final TextEditingController? controller;

  HeadingText({
    required this.text,
    this.controller,
  }); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Text(
            text,
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.w900,
                fontFamily: "Muli-Bold")),
      ],
    );
  }
}
