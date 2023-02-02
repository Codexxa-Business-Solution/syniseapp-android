import 'dart:async';

import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/auction/synise_auction_bid_history_screen.dart';
import 'package:synise_project/presention/auction/synise_auction_lot_describtion_screen.dart';
import 'package:synise_project/presention/auction/synise_demo_auction_parent_screen.dart';

class AuctionHomeScreen extends StatefulWidget {
  const AuctionHomeScreen({Key? key}) : super(key: key);

  @override
  State<AuctionHomeScreen> createState() => _AuctionHomeScreenState();
}

class _AuctionHomeScreenState extends State<AuctionHomeScreen> {
  bool demoAuction = false;
  bool auctionInfo = false;
  bool arrowVisible = false;
  bool auctionList = false;

  String auctionHeadng = "Ferro Alloys Corporation Limited";

  var bidItems = [
    'Select Bid',
    '1000.00',
    '1500.00',
    '2000.00',
    '2500.00',
  ];

  var auctionListData = [
    'Demo Auction 1',
    'Demo Auction 2',
    'Demo Auction 3',
    'Demo Auction 4',
    'Demo Auction 5',
    'Demo Auction 6',
    'Demo Auction 7',
    'Demo Auction 8',
    'Demo Auction 9',
    'Demo Auction 10',
  ];

  var items = [
    'Country',
    'UK',
    'Brazil',
    'Africa',
    'China',
  ];

  var quanity = [
    'Quanity',
    '200',
    '300',
    '400',
    '500',
  ];

  String bidValue = 'Select Bid';
  String quanityValue = 'Quanity';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: CommonColor.BID_SLIDDING_TEXT,
            height: SizeConfig.screenHeight * 0.03,
            child: Center(
              child: Marquee(
                text:
                    "Welcome to the Online Auction for sale of FeCr Slag offered by M/s. Ferro Alloys Corporation Ltd., Odisha.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal * 2.7,
                    fontFamily: 'Roboto_normal',
                    fontWeight: FontWeight.w400),
                velocity: 40,
                blankSpace: 90,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LotDescription()));
            },
            child: Container(
              // color: CommonColor.CAPTCHA_CODE_COLOR,
              height: SizeConfig.screenHeight * 0.05,
              child: Padding(
                padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.04),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Date : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_normal',
                          fontWeight: FontWeight.w500),
                      maxLines: 1,
                    ),
                    Text(
                      "11/12/2022",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_normal',
                          fontWeight: FontWeight.w500),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.0,
                left: SizeConfig.screenWidth * 0.03,
                right: SizeConfig.screenWidth * 0.03),
            child: Row(
              children: [
                Stack(
                  children: [
                    Visibility(
                      visible: !auctionInfo,
                      child: GestureDetector(
                        onDoubleTap: () {},
                        onTap: () {
                          if (mounted) {
                            setState(() {
                              demoAuction = !demoAuction;
                              auctionInfo = !auctionInfo;
                              arrowVisible = !arrowVisible;
                              auctionList = !auctionList;
                              print("accept");
                            });
                          }
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.045,
                          width: SizeConfig.screenWidth * 0.94,
                          decoration: BoxDecoration(
                            color: CommonColor.SUBMIT_BID,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 0.05),
                                child: Text(
                                  auctionHeadng.toString(),
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.8,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.screenWidth * 0.05),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/images/down_arrow.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: demoAuction,
                      child: GestureDetector(
                        onDoubleTap: () {},
                        onTap: () {
                          if (mounted) {
                            setState(() {
                              demoAuction = !demoAuction;
                              auctionInfo = !auctionInfo;
                              arrowVisible = !arrowVisible;
                              auctionList = !auctionList;
                            });
                          }
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.045,
                          width: SizeConfig.screenWidth * 0.94,
                          decoration: BoxDecoration(
                            color: CommonColor.SUBMIT_BID,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(13),
                                topRight: Radius.circular(13)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 0.05),
                                child: Text(
                                  auctionHeadng,
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.8,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.screenWidth * 0.05),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Visibility(
                                          visible: !arrowVisible,
                                          child: const Image(
                                            image: AssetImage(
                                                "assets/images/down_arrow.png"),
                                          ),
                                        ),
                                        Visibility(
                                          visible: arrowVisible,
                                          child: const Image(
                                            image: AssetImage(
                                                "assets/images/up_arrow.png"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: SizeConfig.screenHeight * 0.9,
                child: ListView.builder(
                    padding:
                        EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.15),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.screenHeight * 0.02,
                            left: SizeConfig.screenWidth * 0.03,
                            right: SizeConfig.screenWidth * 0.03),
                        child: getAuctionInfo(
                            SizeConfig.screenHeight, SizeConfig.screenWidth),
                      );
                    }),
              ),
              Visibility(
                visible: auctionList,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.screenWidth * 0.03,
                      right: SizeConfig.screenWidth * 0.03),
                  child: Container(
                      height: SizeConfig.screenHeight * 0.31,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: ListView.builder(
                          itemCount: auctionListData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.screenHeight * 0.018),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left:
                                                SizeConfig.screenWidth * 0.03),
                                        child: GestureDetector(
                                          onDoubleTap: () {},
                                          onTap: () {
                                            if (mounted) {
                                              setState(() {
                                                demoAuction = !demoAuction;
                                                auctionInfo = !auctionInfo;
                                                arrowVisible = !arrowVisible;
                                                auctionList = !auctionList;
                                                auctionHeadng =
                                                    auctionListData[index]
                                                        .toString();
                                                print("add");
                                              });
                                            }
                                          },
                                          child: Container(
                                            width: SizeConfig.screenWidth * 0.9,
                                            color: Colors.transparent,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: SizeConfig.screenHeight *
                                                      0.002),
                                              child: Text(
                                                auctionListData[index],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: SizeConfig
                                                            .blockSizeHorizontal *
                                                        3.2,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily:
                                                        'Robot_Regular'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: SizeConfig.screenHeight * 0.02),
                                    child: Container(
                                      height: SizeConfig.screenHeight * 0.001,
                                      color: CommonColor.PROFILE_COLOR,
                                    ),
                                  )
                                ],
                              ),
                            );
                          })),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getAuctionInfo(double parentHeight, double parentWidth) {
    return Column(
      children: [
        Container(
          height: parentHeight * 0.093,
          decoration: const BoxDecoration(
              color: CommonColor.SUBMIT_BID,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13), topRight: Radius.circular(13))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: parentWidth * 0.03, top: parentHeight * 0.01),
                child: Row(
                  children: [
                    Container(
                      width: parentWidth * 0.4,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          Text(
                            "Catalogue No. :",
                            style: TextStyle(
                                color: CommonColor.APP_BAR_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 2.7,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.02),
                            child: Text(
                              "7589641236",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal * 2.7,
                                  fontFamily: 'Roboto_normal',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.07),
                      child: Container(
                        // color: Colors.yellow,
                        child: Row(
                          children: [
                            Text(
                              "Time :",
                              style: TextStyle(
                                  color: CommonColor.APP_BAR_COLOR,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal * 2.7,
                                  fontFamily: 'Roboto_normal',
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: parentWidth * 0.02),
                              child: Text(
                                "5:00:00 AM - 11:55:00 PM",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 2.7,
                                    fontFamily: 'Roboto_normal',
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: parentWidth * 0.03, top: parentHeight * 0.006),
                child: Row(
                  children: [
                    Text(
                      "Material            :",
                      style: TextStyle(
                          color: CommonColor.APP_BAR_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 2.7,
                          fontFamily: 'Roboto_normal',
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.02),
                      child: Text(
                        "Lot A1 Jan/022:Jigging slag / Bhadrak.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal * 2.7,
                            fontFamily: 'Roboto_normal',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: parentWidth * 0.03, top: parentHeight * 0.02),
                child: Row(
                  children: [
                    Text(
                      "Lot No.              :",
                      style: TextStyle(
                          color: CommonColor.APP_BAR_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 2.7,
                          fontFamily: 'Roboto_normal',
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.02),
                      child: Text(
                        "Lot A1 Jan/022:Jigging slag / Bhadrak.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal * 2.7,
                            fontFamily: 'Roboto_normal',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: parentHeight * 0.31,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(13),
                bottomRight: Radius.circular(13)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
                top: parentHeight * 0.015,
                left: parentWidth * 0.07,
                right: parentWidth * 0.07),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BlinkText(
                          "Rank : 2",
                          style: TextStyle(
                              color: CommonColor.RANKS_ID_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight * 0.017),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "My Quantity",
                                style: TextStyle(
                                    color: CommonColor.APP_BAR_COLOR,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 3.5,
                                    fontFamily: 'Roboto_normal',
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: parentHeight * 0.01),
                                child: Text(
                                  "200",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.4,
                                      fontFamily: 'Roboto_normal',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "My Bid",
                                style: TextStyle(
                                    color: CommonColor.APP_BAR_COLOR,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 3.5,
                                    fontFamily: 'Roboto_normal',
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: parentHeight * 0.01),
                                child: Text(
                                  "1500.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.4,
                                      fontFamily: 'Roboto_normal',
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "Highest Bid",
                                style: TextStyle(
                                    color: CommonColor.APP_BAR_COLOR,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal * 3.5,
                                    fontFamily: 'Roboto_normal',
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: parentHeight * 0.01),
                                child: Text(
                                  "2100.00",
                                  style: TextStyle(
                                      color: CommonColor.RANK_ID_COLOR,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.4,
                                      fontFamily: 'Roboto_normal',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight * 0.025),
                      child: Row(
                        children: [
                          Container(
                            height: parentHeight * 0.004,
                            width: parentWidth * 0.3,
                            color: CommonColor.PROGRESS_LINE_COLOR,
                            child: Text(
                              "Hi",
                              style: TextStyle(color: Colors.transparent),
                            ),
                          ),
                          Container(
                            height: parentHeight * 0.003,
                            width: parentWidth * 0.5,
                            color: CommonColor.REMAINING_INDICATOR_COLOR,
                            child: Text(
                              "Hi",
                              style: TextStyle(color: Colors.transparent),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight * 0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time Left",
                            style: TextStyle(
                                color: CommonColor.Hint_TEXT_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "11:42:14",
                            style: TextStyle(
                                color: CommonColor.Hint_TEXT_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: parentHeight * 0.037,
                                width: parentWidth * 0.32,
                                decoration: BoxDecoration(
                                    // color: Colors.red,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.black38, width: 1.0)),
                                child: DropdownButtonHideUnderline(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: parentWidth * 0.03),
                                    child: DropdownButton(
                                      value: bidValue,
                                      style: TextStyle(
                                          color: bidValue == "Select Bid"
                                              ? CommonColor.Hint_TEXT_COLOR
                                              : Colors.black),
                                      icon: Padding(
                                        padding: EdgeInsets.only(
                                            right:
                                                SizeConfig.screenWidth * 0.05),
                                        child: Row(
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/images/down_arrow.png"),
                                            ),
                                          ],
                                        ),
                                      ),
                                      items: bidItems.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          bidValue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: parentWidth * 0.02),
                                child: Text(
                                  "/MT",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.5,
                                      fontFamily: 'Roboto_normal',
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: parentHeight * 0.037,
                            width: parentWidth * 0.32,
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: Colors.black38, width: 1.0)),
                            child: DropdownButtonHideUnderline(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: parentWidth * 0.02),
                                child: DropdownButton(
                                  value: quanityValue,
                                  style: TextStyle(
                                      color: quanityValue == "Quanity"
                                          ? CommonColor.Hint_TEXT_COLOR
                                          : Colors.black),
                                  icon: Padding(
                                    padding: EdgeInsets.only(
                                        right: SizeConfig.screenWidth * 0.03),
                                    child: Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/images/down_arrow.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  items: quanity.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      quanityValue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 0.03),
                      child: GestureDetector(
                        onDoubleTap: () {},
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DemoAuctionParentScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onDoubleTap: () {},
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AuctionBidHistory()));
                              },
                              child: Container(
                                height: parentHeight * 0.027,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border(
                                      bottom: BorderSide(
                                    color: CommonColor.RANK_ID_COLOR,
                                    width: 1.5, // Underline thickness
                                  )),
                                ),
                                child: Center(
                                  child: Text(
                                    "Bid History",
                                    style: TextStyle(
                                        color: CommonColor.RANK_ID_COLOR,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal *
                                                3.5,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto-Medium'),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: CommonColor.APP_BAR_COLOR,
                                      borderRadius: BorderRadius.circular(7)),
                                  height: SizeConfig.screenHeight * 0.04,
                                  width: SizeConfig.screenWidth * 0.2,
                                  child: Center(
                                      child: Text(
                                    "View Details",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal *
                                                3.0,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto-Medium'),
                                  )),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: parentWidth * 0.05),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: CommonColor.RANK_ID_COLOR,
                                        borderRadius: BorderRadius.circular(7)),
                                    height: SizeConfig.screenHeight * 0.04,
                                    width: SizeConfig.screenWidth * 0.2,
                                    child: Center(
                                        child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal *
                                                  3.5,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Roboto-Medium'),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
