import 'package:flutter/material.dart';
import 'package:practiseflutterproject/utils/constants.dart';
import 'package:practiseflutterproject/utils/size_config.dart';



class RoundedButton extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final VoidCallback? callback;

  RoundedButton(
      {required this.text, this.bgColor = Colors.blue, this.callback});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(50),
      child: ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: Text(text.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
                fontFamily: "Muli-Bold")),
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
