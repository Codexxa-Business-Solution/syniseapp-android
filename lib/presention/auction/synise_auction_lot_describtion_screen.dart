import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/auction/synise_product_photos_screen.dart';




class LotDescription extends StatefulWidget {
  const LotDescription({Key? key}) : super(key: key);

  @override
  State<LotDescription> createState() => _LotDescriptionState();
}

class _LotDescriptionState extends State<LotDescription> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.1,
            child:
            getHeadingName(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),

          Container(
            height: SizeConfig.screenHeight * 0.9,
            child:
            getDescriptionLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
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
                onDoubleTap: (){},
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.transparent,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: CommonColor.WHITE_COLOR,
                  ),
                ),
              ),
            ),
            Text(
              "Lot Description",
              style: TextStyle(
                  color: CommonColor.WHITE_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto_Medium'),
            ),
            Padding(
              padding: EdgeInsets.only(right: parentWidth * 0.05),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getDescriptionLayout(double parentHeight, double parentWidth){
    return  Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.03, right: parentWidth*0.03),
      child: Column(
        children: [
          Container(
            height: parentHeight * 0.12,
            decoration: BoxDecoration(
                color: CommonColor.SUBMIT_BID,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: const Offset(0, 1),
                  )
                ],
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
                Padding(
                  padding: EdgeInsets.only(
                      left: parentWidth * 0.03, top: parentHeight * 0.02),
                  child: Row(
                    children: [
                      Text(
                        "Delivery             :",
                        style: TextStyle(
                            color: CommonColor.APP_BAR_COLOR,
                            fontSize: SizeConfig.blockSizeHorizontal * 2.7,
                            fontFamily: 'Roboto_normal',
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth * 0.02),
                        child: Text(
                          "EX - Works",
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
            height: SizeConfig.screenHeight * 0.55,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: const Offset(0, 7),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                )),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight * 0.025,
                      left: parentWidth * 0.04,
                      right: parentWidth * 0.0),
                  child: Row(
                    children: [
                      Text(
                        "Biding Currency : ",
                        style: TextStyle(
                            color: CommonColor.APP_BAR_COLOR,
                            fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto_Regular'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth * 0.03),
                        child: Text(
                          'INR',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.025),
                  child: Container(
                    color: CommonColor.DIVIDER_COLOR,
                    height: SizeConfig.screenHeight * 0.002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight * 0.025,
                      left: parentWidth * 0.04,
                      right: parentWidth * 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Opening Price :",
                            style: TextStyle(
                                color: CommonColor.APP_BAR_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.03),
                            child: Text(
                              '\u{20B9} 500.00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        width: parentWidth * 0.43,
                        child:  Row(
                          children: [
                            Text(
                              "Bid Increment :",
                              style: TextStyle(
                                  color: CommonColor.APP_BAR_COLOR,
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: parentWidth * 0.03),
                              child: Text(
                                '100.00',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.025),
                  child: Container(
                    color: CommonColor.DIVIDER_COLOR,
                    height: SizeConfig.screenHeight * 0.002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight * 0.025,
                      left: parentWidth * 0.04,
                      right: parentWidth * 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "QTY :",
                            style: TextStyle(
                                color: CommonColor.APP_BAR_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "1000",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 3.5,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        width: parentWidth * 0.43,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "GST :",
                              style: TextStyle(
                                  color: CommonColor.APP_BAR_COLOR,
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: parentWidth * 0.16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Extra",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 3.5,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.025),
                  child: Container(
                    color: CommonColor.DIVIDER_COLOR,
                    height: SizeConfig.screenHeight * 0.002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight * 0.025,
                      left: parentWidth * 0.04,
                      right: parentWidth * 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "UOM :",
                            style: TextStyle(
                                color: CommonColor.APP_BAR_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.173),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "MT",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 3.5,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        width: parentWidth * 0.43,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "TCS :",
                              style: TextStyle(
                                  color: CommonColor.APP_BAR_COLOR,
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: parentWidth * 0.16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Extra",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 3.5,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.025),
                  child: Container(
                    color: CommonColor.DIVIDER_COLOR,
                    height: SizeConfig.screenHeight * 0.002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight * 0.025,
                      left: parentWidth * 0.04,
                      right: parentWidth * 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Min Quantity :",
                            style: TextStyle(
                                color: CommonColor.APP_BAR_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "100",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 3.5,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        width: parentWidth * 0.43,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Max Quantity :",
                              style: TextStyle(
                                  color: CommonColor.APP_BAR_COLOR,
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: parentWidth * 0.015),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "5000",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 3.5,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.025),
                  child: Container(
                    color: CommonColor.DIVIDER_COLOR,
                    height: SizeConfig.screenHeight * 0.002,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.12, right: parentWidth*0.12),
                  child: Container(
                    height: parentHeight*0.08,
                    decoration:  BoxDecoration(
                      border: Border.all(color: CommonColor.APP_BAR_COLOR, width: 1.5)
                    ),
                    child: Center(child: Text("Biding is on PMT basis, Taxes & Duties will be charge extra.",
                      style: TextStyle(
                          color: CommonColor.TENDER_BOX_TEXT,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto_Regular'),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onDoubleTap: () {},
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductPhotos()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: parentWidth*0.05, top: parentHeight*0.025),
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
                              "View Photos",
                              style: TextStyle(
                                  color: CommonColor.RANK_ID_COLOR,
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal *
                                      3.7,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto-Medium'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }

}
