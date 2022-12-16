import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/Tender/regisrtaion.dart';

import 'Drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

int index = 0;
bool _checkbox = false;
final _tenderFocus = FocusNode();
final _auctionFocus = FocusNode();
final userNameController = TextEditingController();
final passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          SyniseText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          LoginText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          TenderAuctionText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          TenderAuctionLogin(SizeConfig.screenHeight, SizeConfig.screenWidth),
        ],
      ),
    );
  }

  Widget SyniseText(double parentHeight, double parentWidth) {
    return Container(
        child: Padding(
      padding: EdgeInsets.only(
          top: parentHeight * 0.15,
          left: parentWidth * 0.3,
          right: parentWidth * 0.3),
      child: const Center(
          child: Image(
              image: AssetImage(
        "assets/images/applogo.png",
      ))),
    ));
  }

  Widget LoginText(double parentHeight, double parentWidth) {
    return Container(
        height: parentHeight * 0.17,
        child: Center(
          child: Text(
            "Login",
            style: TextStyle(
              color: CommonColor.BLACK_COLOR,
              fontSize: SizeConfig.blockSizeHorizontal * 8.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto_Bold',
            ),
          ),
        ));
  }

  Widget TenderAuctionText(double parentHeight, double parentWidth) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                if (mounted) {
                  setState(() {
                    index = 1;
                  });
                }
              },
              onDoubleTap: () {},
              child: Container(
                height: parentHeight * 0.07,
                width: parentWidth * 0.4,
                decoration: BoxDecoration(
                  color: index == 1
                      ? CommonColor.TENDER_BOX_TEXT
                      : CommonColor.Hint_TEXT_COLOR,
                  border: Border.all(
                      width: 1, color: CommonColor.Hint_TEXT_COLOR), //Border.
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Tender",
                    style: TextStyle(
                      color: CommonColor.BLACK_COLOR,
                      fontFamily: 'Roboto-Regular',
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (mounted) {
                  setState(() {
                    index = 2;
                  });
                }
              },
              onDoubleTap: () {},
              child: Container(
                height: parentHeight * 0.07,
                width: parentWidth * 0.4,
                decoration: BoxDecoration(
                  color: index == 2
                      ? CommonColor.TENDER_BOX_TEXT
                      : CommonColor.Hint_TEXT_COLOR,
                  border: Border.all(
                      width: 1, color: CommonColor.Hint_TEXT_COLOR), //Border.
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text("Auction",
                      style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontFamily: 'Roboto-Regular',
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      )),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget TenderAuctionLogin(double parentHeight, double parentWidth) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.04,
              left: parentWidth * 0.04,
              right: parentWidth * 0.04),
          child: TextFormField(
              controller: userNameController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              focusNode: _tenderFocus,
              //cursorColor: Colors.grey,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'User Name',
                  fillColor: Colors.white,
                  hintStyle: TextStyle(fontSize: 14),
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: CommonColor.BLACK_COLOR),
                  )),
              style: TextStyle(fontSize: 10)),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.04,
              left: parentWidth * 0.04,
              right: parentWidth * 0.04),
          child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              controller: passwordController,
              cursorColor: CommonColor.BLACK_COLOR,
              textInputAction: TextInputAction.next,
              focusNode: _auctionFocus,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Password',
                  fillColor: Colors.white,
                  hintStyle: TextStyle(fontSize: 14),
                  filled: true,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: CommonColor.BLACK_COLOR),
                  )),
              style: TextStyle(fontSize: 11)),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: parentWidth * 0.6, top: parentHeight * 0.01),
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
                color: CommonColor.BLACK_COLOR,
                fontFamily: 'Roboto-Regular',
                fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: parentHeight * 0.02),
          child: Row(
            children: [
              Checkbox(
                value: _checkbox,
                onChanged: (value) {
                  setState(() {
                    _checkbox = !_checkbox;
                  });
                },
              ),
              Row(
                children: [
                  RichText(
                      text: const TextSpan(
                          text: "I have read and agree to Synise",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto-Regular',
                              fontSize: 13),
                          children: [
                        TextSpan(
                            text: " Privacy Policy ",
                            style: TextStyle(
                                color: CommonColor.TENDER_BOX_TEXT,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto-Regular',
                                fontSize: 13)),
                        TextSpan(
                            text: "and \n",
                            style: TextStyle(
                                color: CommonColor.BLACK_COLOR,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto-Regular',
                                fontSize: 13)),
                        TextSpan(
                            text: "Terms of Service.\n",
                            style: TextStyle(
                                color: CommonColor.TENDER_BOX_TEXT,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto-Regular',
                                fontSize: 13),)
                      ])),
                ],
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TenderDrawerScreen()));
          },
          onDoubleTap: () {},
          child: Container(
              width: parentWidth * 0.8,
              height: parentHeight * 0.07,
              decoration: BoxDecoration(
                color: CommonColor.TENDER_BOX_TEXT,
                border: Border.all(
                    width: 1, color: CommonColor.Hint_TEXT_COLOR), //Border.
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: const Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    color: CommonColor.TENDER_TEXT,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 16),
              ))),
        ),
        Padding(
          padding: EdgeInsets.only(top: parentHeight * 0.02),
          child: Row(
            children: [
              Flexible(
                child: Center(
                  child: RichText(
                    text:  TextSpan(
                        text: "Dont have an Account? ",
                        style: TextStyle(
                          fontSize: 16,
                          color: CommonColor.BLACK_COLOR,
                        ),
                        children: [
                          TextSpan(
                            text: "Signup",
                            style: TextStyle(
                              fontSize: 16,
                              color: CommonColor.TENDER_BOX_TEXT,
                            ), recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Registration()));
                            }
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
