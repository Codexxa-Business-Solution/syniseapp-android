import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/login_registration/synise_supplier_registration.dart';
import 'package:synise_project/presention/auction/synise_auction_drawer_screen.dart';

import '../presention/Tender/synise_tender_drawer_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

int index = 0;

final _userFocus = FocusNode();
final _passwordFocus = FocusNode();
final userNameController = TextEditingController();
final passwordController = TextEditingController();

bool isChecked = false;

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();

    index = 1;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onDoubleTap: (){},
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            SyniseText(SizeConfig.screenHeight, SizeConfig.screenWidth),
            LoginText(SizeConfig.screenHeight, SizeConfig.screenWidth),
            TenderAuctionText(SizeConfig.screenHeight, SizeConfig.screenWidth),
            TenderAuctionLogin(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ],
        ),
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
      child:  Center(
          child: Image(
              image: AssetImage(
        "assets/images/applogo.png",

      ),
          height: SizeConfig.screenHeight*0.08,)),
    ));
  }

  Widget LoginText(double parentHeight, double parentWidth) {
    return Container(
        height: parentHeight * 0.13,
        color: Colors.transparent,
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
                height: parentHeight * 0.06,
                width: parentWidth * 0.4,
                decoration: BoxDecoration(
                  color: index == 1
                      ? CommonColor.TENDER_BOX_TEXT
                      : CommonColor.REMAINING_INDICATOR_COLOR,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Tender",
                    style: TextStyle(
                      color: index == 1
                          ? CommonColor.WHITE_COLOR
                          : CommonColor.BLACK_COLOR,
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
                height: parentHeight * 0.06,
                width: parentWidth * 0.4,
                decoration: BoxDecoration(
                  color: index == 2
                      ? CommonColor.APP_BAR_COLOR
                      : CommonColor.REMAINING_INDICATOR_COLOR,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text("Auction",
                      style: TextStyle(
                        color: index == 2
                            ? CommonColor.WHITE_COLOR
                            : CommonColor.BLACK_COLOR,
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
            focusNode: _userFocus,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'User Name',
                fillColor: Colors.white,
                hintStyle: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto_Regular',
                    color: CommonColor.Hint_TEXT_COLOR),
                filled: true,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: CommonColor.BLACK_COLOR),
                )),
            style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto_Regular',
                color: CommonColor.BLACK_COLOR),
          ),
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
            textInputAction: TextInputAction.next,
            focusNode: _passwordFocus,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Password',
                fillColor: Colors.white,
                hintStyle: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto_Regular',
                    color: CommonColor.Hint_TEXT_COLOR),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: CommonColor.BLACK_COLOR),
                )),
            style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto_Regular',
                color: CommonColor.BLACK_COLOR),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.01, right: parentWidth * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(
                    color: CommonColor.BLACK_COLOR,
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.w400,
                    fontSize: SizeConfig.blockSizeHorizontal * 3.5),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: parentWidth * 0.04, top: parentHeight * 0.02),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: parentHeight * 0.017),
                child: Stack(
                  children: [
                    Visibility(
                      visible: !isChecked,
                      child: GestureDetector(
                        onTap: () {
                          if (mounted) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          }
                        },
                        child: Container(
                          height: parentHeight * 0.027,
                          width: parentWidth * 0.059,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(3),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: const Text(
                            "Hiii",
                            style: TextStyle(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isChecked,
                      child: GestureDetector(
                        onTap: () {
                          if (mounted) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          }
                        },
                        child: Container(
                          height: parentHeight * 0.027,
                          width: parentWidth * 0.059,
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: Center(
                              child: Icon(
                            Icons.check,
                            size: parentHeight * 0.02,
                            color: CommonColor.APP_BAR_COLOR,
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth * 0.03),
                    child: RichText(
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
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 13)),
                          TextSpan(
                              text: "and\n",
                              style: TextStyle(
                                  color: CommonColor.BLACK_COLOR,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 13)),
                          TextSpan(
                            text: "Terms of Service.\n",
                            style: TextStyle(
                                color: CommonColor.TENDER_BOX_TEXT,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto-Regular',
                                fontSize: 13),
                          )
                        ])),
                  ),
                ],
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {

            index == 1 ?
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TenderDrawerScreen())) :
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AuctionDrawerScreen()));
          },
          onDoubleTap: () {},
          child: Container(
              width: parentWidth * 0.77,
              height: parentHeight * 0.065,
              decoration: BoxDecoration(
                color: CommonColor.TENDER_BOX_TEXT,
                border: Border.all(
                    width: 1, color: CommonColor.Hint_TEXT_COLOR), //Border.
                borderRadius: const BorderRadius.all(
                  Radius.circular(13),
                ),
              ),
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    color: CommonColor.TENDER_TEXT,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Regular',
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0),
              ))),
        ),
        Padding(
          padding: EdgeInsets.only(top: parentHeight * 0.02),
          child: Row(
            children: [
              Flexible(
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Dont have an Account? ",
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*3.5,
                          color: CommonColor.BLACK_COLOR,
                          fontFamily: 'Roboto_Regular',
                          fontWeight: FontWeight.w500
                        ),
                        children: [
                          TextSpan(
                              text: "Signup",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                  color: CommonColor.TENDER_BOX_TEXT,
                                  fontFamily: 'Roboto_Regular',
                                  fontWeight: FontWeight.w500
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SupplierRegistration()));
                                })
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
