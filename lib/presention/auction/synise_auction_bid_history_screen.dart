
import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

class AuctionBidHistory extends StatefulWidget {
  const AuctionBidHistory({Key? key}) : super(key: key);

  @override
  State<AuctionBidHistory> createState() => _AuctionBidHistoryState();
}

class _AuctionBidHistoryState extends State<AuctionBidHistory> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.1,
            child:
                getHeadingName(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
          Container(
            height: SizeConfig.screenHeight * 0.9,
            child: getBidHistoryLayout(
                SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
        ],
      ),
    );
  }

  Widget getHeadingName(double parentHeight, double parentWidth) {
    return Container(
      height: parentHeight * 0.1,
      color: CommonColor.APP_BAR_COLOR,
      child: Padding(
        padding: EdgeInsets.only(top: parentHeight * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: parentWidth * 0.05),
              child: GestureDetector(
                onDoubleTap: () {},
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.transparent,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: CommonColor.WHITE_COLOR,
                  ),
                ),
              ),
            ),
            Text(
              "Bid History",
              style: TextStyle(
                  color: CommonColor.WHITE_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                  fontFamily: 'Roboto_Medium'),
            ),
            Padding(
              padding: EdgeInsets.only(right: parentWidth * 0.05),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getBidHistoryLayout(double parentHeight, double parentWidth) {
    return Column(
      children: [
        Container(
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
        Container(
          height: SizeConfig.screenHeight * 0.05,
          child: Padding(
            padding: EdgeInsets.only(left: parentWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Lot No. :",
                  style: TextStyle(
                      color: CommonColor.APP_BAR_COLOR,
                      fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                      fontFamily: 'Roboto_normal',
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth * 0.02),
                  child: Text(
                    "Lot A1 Jan/022:Jigging slag / Bhadrak.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                        fontFamily: 'Roboto_normal',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),



        Container(
          height: SizeConfig.screenHeight * 0.8,
          color: Colors.white,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Container(
                  // color: Colors.red,
                  height: parentHeight*0.05,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: parentWidth * 0.03,
                          right: parentWidth * 0.03,
                         ),
                      child: Container(
                        height: parentHeight * 0.05,
                        decoration: BoxDecoration(
                          color: CommonColor.SUBMIT_BID,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: parentWidth*0.07),
                              child: Text(
                                "Price",
                                style: TextStyle(
                                    color: CommonColor.APP_BAR_COLOR,
                                    fontSize: SizeConfig
                                        .blockSizeHorizontal *
                                        4.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto_Regular'),
                              ),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Time",
                                  style: TextStyle(
                                      color: CommonColor.APP_BAR_COLOR,
                                      fontSize: SizeConfig
                                          .blockSizeHorizontal *
                                          4.0,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: parentWidth*0.07),
                                  child: Text(
                                    "Quantity",
                                    style: TextStyle(
                                        color: CommonColor.APP_BAR_COLOR,
                                        fontSize: SizeConfig
                                            .blockSizeHorizontal *
                                            4.0,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ),

              Container(
                height: parentHeight*0.75,
                child: ListView.builder(
                            itemCount: 10,
                            padding: EdgeInsets.only(bottom: parentHeight * 0.07),
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: EdgeInsets.only(
                                      left: parentWidth * 0.03,
                                      right: parentWidth * 0.03,
                                      top: parentHeight * 0.02),
                                  child: Container(
                                    height: parentHeight * 0.05,
                                    decoration: BoxDecoration(
                                      color: CommonColor.WHITE_COLOR,
                                      borderRadius: BorderRadius.circular(13),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.2),
                                          spreadRadius: 3,
                                          blurRadius: 5,
                                          offset: Offset(0, 2),
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: parentWidth*0.04),
                                              child: Text(
                                                "\u{20B9} 500.00",
                                                style: TextStyle(
                                                    color: CommonColor.APP_BAR_COLOR,
                                                    fontSize: SizeConfig
                                                        .blockSizeHorizontal *
                                                        3.5,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Roboto_Regular'),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "11:52:09 AM",
                                              style: TextStyle(
                                                  color: CommonColor.APP_BAR_COLOR,
                                                  fontSize: SizeConfig
                                                      .blockSizeHorizontal *
                                                      3.5,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto_Regular'),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(right: parentWidth*0.11),
                                              child: Text(
                                                "500",
                                                style: TextStyle(
                                                    color: CommonColor.APP_BAR_COLOR,
                                                    fontSize: SizeConfig
                                                        .blockSizeHorizontal *
                                                        3.5,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Roboto_Regular'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ));
                            }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
