import 'package:flutter/material.dart';
import 'package:practiseflutterproject/utils/constants.dart';
import 'package:practiseflutterproject/utils/size_config.dart';



class BorderTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Color? textColor;
  final Color? hintColor;

  final TextInputType? keyboardType;
  final TextEditingController? controller;

  static var radius = 6.0;
  static var borderWidth = 1.5;

  BorderTextField(
      {required this.hintText,
      this.controller,
      this.keyboardType = TextInputType.text,
      required this.labelText,
      this.textColor = Colors.grey,
      this.hintColor = Colors.grey,
      }); // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(color: kTextColor,fontSize: getProportionateScreenWidth(14), fontFamily: "Muli-Bold"),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: kPrimaryColor, width: borderWidth)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: kTextColor, width: borderWidth)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(color: kTextColor, width: borderWidth)),
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(color: kTextColor,fontSize: getProportionateScreenWidth(14)),
            labelStyle: TextStyle(color: kTextColor,fontSize: getProportionateScreenWidth(14))
        ),
      );
  }
}
