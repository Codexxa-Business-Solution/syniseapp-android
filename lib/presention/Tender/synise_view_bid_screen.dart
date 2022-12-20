import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

class TenderViewBidScreen extends StatefulWidget {
  const TenderViewBidScreen({Key? key}) : super(key: key);

  @override
  State<TenderViewBidScreen> createState() => _TenderViewBidScreenState();
}

class _TenderViewBidScreenState extends State<TenderViewBidScreen> {
  @override
  bool listBox = false;
  bool faqList = false;

  int currentIndex = 0;
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
demoTender(SizeConfig.screenHeight, SizeConfig.screenWidth),
          viewBidAllParts(SizeConfig.screenHeight, SizeConfig.screenWidth)
        ],
      )
    );
  }
  Widget demoTender (double parentHeight,double parentWidth){
    return Padding(
      padding:  EdgeInsets.only(top: parentHeight*0.03,left: parentWidth*0.03,right: parentWidth*0.03),
      child: Container(
        height: SizeConfig.screenHeight * 0.08,
        width: SizeConfig.screenWidth*0.94,
        decoration: BoxDecoration(
          color: CommonColor.REGISTER_AS_COLOR,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:  [
               Padding(
                 padding: EdgeInsets.only(top: parentHeight*0.01,left: parentWidth*0.03),
                 child: Text("Demo Tender",style: TextStyle( color: Colors.black,
                     fontSize: SizeConfig.blockSizeHorizontal*4.0,
                     fontWeight: FontWeight.w500,
                     fontFamily: 'Roboto_Regular'),),
               ),
               Padding(
                 padding:  EdgeInsets.only(right: parentHeight*0.02,top: parentHeight*0.01),
                 child: Row(
                   children: [

                     Text("Tender Id :",style: TextStyle( color: Colors.black,
                         fontSize: SizeConfig.blockSizeHorizontal*3.5,
                         fontWeight: FontWeight.w500,
                         fontFamily: 'Roboto_Regular'),),
                     Text(" DEMO10220002")
                   ],
                 ),
               ),

             ],
            ),
            Padding(
              padding:  EdgeInsets.only(right: parentWidth*0.7,top: parentHeight*0.01),
              child: Text("Description",style: TextStyle( color: Colors.black,
                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto_Regular'),),
            )
          ],
        ),


      ),
    );
  }
  Widget viewBidAllParts(double parentHeight,double parentWidth){
    return  SizedBox(
      height: parentHeight*0.9,
      child: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.07),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Visibility(
                        visible: listBox,
                        child: GestureDetector(
                          onDoubleTap: () {},
                          onTap: () {
                            if (mounted) {
                              setState(() {
                                listBox = !listBox;
                                faqList = !faqList;

                                print("close");
                              });
                            }
                          },
                          child: Container(
                            height: SizeConfig.screenHeight * 0.066,
                            width: SizeConfig.screenWidth * 0.94,
                            decoration: const BoxDecoration(
                              color: CommonColor.REGISTER_AS_COLOR,
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
                                    "Part 1",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal *
                                            4.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ),
                                Text(
                                  "Lots Required - 8",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal *
                                          4.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: SizeConfig.screenWidth * 0.05),
                                  child: Row(
                                    children: const [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/up_arrow.png"),
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
                        visible: !listBox,
                        child: GestureDetector(
                          onDoubleTap: () {},
                          onTap: () {
                            if (mounted) {
                              setState(() {
                                listBox = !listBox;
                                faqList = !faqList;
                                print("open");
                              });
                            }
                          },
                          child: Container(
                            height: SizeConfig.screenHeight * 0.066,
                            width: SizeConfig.screenWidth * 0.94,
                            decoration: BoxDecoration(
                              color: CommonColor.REGISTER_AS_COLOR,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.05),
                                  child: Text(
                                    "Part 1",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal *
                                            4.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ),
                                Text(
                                  "Lots Required - 8",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal *
                                          4.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: SizeConfig.screenWidth * 0.05),
                                  child: Row(
                                    children: const [
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
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 0.03,
                        right: SizeConfig.screenWidth * 0.03),
                    child: Visibility(
                      visible: faqList,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            )
                          ],
                        ),
                        child: Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.02, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Party Name :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("Bidder 1",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Material Type :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("Lumps",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Product :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("10-150",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Bid Qty :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("800T+/-5%",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Terms :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("FOB Vishakapatnam",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Port :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("Vishakapatnam",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Expection Details :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("-",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Pricing IN :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("USC/Ib",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Payment Term :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("100% advance",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Other Product :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("-",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Other Payment :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("-",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("1st Bid Price :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("USC 9000/Ib",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Counter Mark :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("-",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.01, right: parentWidth*0.07,
                                  left: parentWidth*0.08,bottom: parentHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("Counter Offer :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),

                                  Container(
                                    width: parentWidth*0.4,
                                    // color: Colors.red,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text("-",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: SizeConfig.blockSizeHorizontal*3.8,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Roboto_Regular'
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Divider(
                              height: parentHeight * 0.02,
                              color: CommonColor.DIVIDER_COLOR,
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
