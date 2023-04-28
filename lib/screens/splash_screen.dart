import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practiseflutterproject/utils/size_config.dart';

import 'login_screen.dart';


class SplashScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()  => SplasState();

}

class SplasState extends State<SplashScreen>
{

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    });

  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text(
              "Tiffinit",
              style: TextStyle(
                  color: Colors.white, fontSize: 34, fontWeight: FontWeight.w700),
            )),
      ),
    );
  }

}

