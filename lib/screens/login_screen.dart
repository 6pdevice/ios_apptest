import 'package:flutter/material.dart';
import 'package:practiseflutterproject/utils/constants.dart';
import 'package:practiseflutterproject/utils/size_config.dart';
import 'package:practiseflutterproject/widgets/border_textfield.dart';
import 'package:practiseflutterproject/widgets/heading_text.dart';
import 'package:practiseflutterproject/widgets/normal_text.dart';
import 'package:practiseflutterproject/widgets/rounded_button.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<LoginScreen> {
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Icon(
                      Icons.ice_skating,
                      size: 100,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: getProportionateScreenHeight(5),
                                ),
                                HeadingText(
                                  text: "Log in or Sign up",
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(17.0),
                                ),
                                BorderTextField(
                                  hintText: 'Mobile No.',
                                  controller: phoneController,
                                  labelText: 'Mobile No.',
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(20.0),
                                ),
                                RoundedButton(
                                  text: 'Get Otp',
                                  callback: () {},
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(10.0),
                                ),
                                NormalText(
                                  text: "Skip",
                                  color: kPrimaryColor,
                                ),
                                RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          color: kTextColor,
                                          fontSize:
                                              getProportionateScreenWidth(11),
                                          fontWeight: FontWeight.w700,
                                          fontFamily: "Muli-Semi-Bold"),
                                      children: [
                                        TextSpan(
                                            text:
                                                'By signing in, you indicate that you have read and agreed to our '),
                                        TextSpan(text: 'Terms of Services',
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize:
                                                getProportionateScreenWidth(11),
                                                fontWeight: FontWeight.w700,
                                                fontFamily: "Muli-Semi-Bold")),
                                        TextSpan(text: ' and '),
                                        TextSpan(text: 'Privacy Policy',
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize:
                                                getProportionateScreenWidth(11),
                                                fontWeight: FontWeight.w700,
                                                fontFamily: "Muli-Semi-Bold"))

                                      ]),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.ice_skating,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ))));
  }
}
