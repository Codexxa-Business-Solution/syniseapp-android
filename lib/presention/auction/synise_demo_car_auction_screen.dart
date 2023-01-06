import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/auction/synise_auction_bid_history_screen.dart';
import 'package:synise_project/presention/auction/synise_product_photos_screen.dart';

class DemoCarAuction extends StatefulWidget {
  const DemoCarAuction({Key? key}) : super(key: key);

  @override
  State<DemoCarAuction> createState() => _DemoCarAuctionState();
}

class _DemoCarAuctionState extends State<DemoCarAuction> {
  var bidItems = [
    'Select Bid',
    '1000.00',
    '1500.00',
    '2000.00',
    '2500.00',
  ];

  var bidAmount = [
    '1000',
    '1200',
    '1500',
    '2000',
    '2500',
  ];

  bool showDetails = false;

  String bidValue = 'Select Bid';
  String bidAmountValue = '1000';

  TextEditingController bidController = TextEditingController();
  TextEditingController lotController = TextEditingController();

  final _bidFocus = FocusNode();
  final _lotFocus = FocusNode();

  String openPrice = "100.00";
  String bidIncrement = "100.00";
  String highBid = "2100.00";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onDoubleTap: () {},
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.screenHeight * 0.02,
                  left: SizeConfig.screenWidth * 0.03,
                  right: SizeConfig.screenWidth * 0.03),
              child: Container(
                  height: SizeConfig.screenHeight * 0.8,
                  color: Colors.transparent,
                  child: getAuctionInfo(
                      SizeConfig.screenHeight, SizeConfig.screenWidth)),
            ),
          ],
        ),
      ),
    );
  }

  Widget getAuctionInfo(double parentHeight, double parentWidth) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: parentHeight * 0.075,
          decoration: const BoxDecoration(
              color: CommonColor.CONTAINER_TIMMITING_COLOR,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13), topRight: Radius.circular(13))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lot No. : A21090002",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight * 0.007),
                          child: Text(
                            "Location : Pune",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: parentWidth * 0.07),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Demo 165/Car",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight * 0.007),
                          child: Text(
                            "Time left: 11:42:14",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // height: SizeConfig.screenHeight * 0.9,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Opening Price :",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Regular'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: parentWidth * 0.03),
                          child: Text(
                            openPrice,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Highest Bid :",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.048),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  highBid,
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
                          "Bid Increment :",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Regular'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: parentWidth * 0.03),
                          child: Text(
                            bidIncrement,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "My Bid :",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "1500.00",
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
                          "Expected Price :",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Regular'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: parentWidth * 0.018),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "NA",
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
                            "Rank :",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth * 0.15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "2",
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
                          "QTY :",
                          style: TextStyle(
                              color: Colors.black,
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
                                color: Colors.black,
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
                                  "NA",
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
                              color: Colors.black,
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
                                color: Colors.black,
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
                                  "NA",
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
                              color: Colors.black,
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
                                color: Colors.black,
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
                padding: EdgeInsets.only(
                    top: parentHeight * 0.02,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: parentWidth * 0.07),
                        child: SizedBox(
                          height: parentHeight * 0.06,
                          child: TextFormField(
                            controller: bidController,
                            focusNode: _bidFocus,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Add Bid",
                              hintStyle: TextStyle(
                                  color: CommonColor.Hint_TEXT_COLOR,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal * 3.4,
                                  fontFamily: 'Roboto_Regular'),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: Colors.black)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: Colors.black)),
                            ),
                            style: TextStyle(
                                color: CommonColor.BLACK_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.4,
                                fontFamily: 'Roboto_Regular'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: parentWidth * 0.07),
                        child: SizedBox(
                          height: parentHeight * 0.06,
                          child: TextFormField(
                            controller: lotController,
                            focusNode: _lotFocus,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              hintText: "Add Lot",
                              hintStyle: TextStyle(
                                  color: CommonColor.Hint_TEXT_COLOR,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal * 3.4,
                                  fontFamily: 'Roboto_Regular'),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: Colors.black)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1.0, color: Colors.black)),
                            ),
                            style: TextStyle(
                                color: CommonColor.BLACK_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 3.4,
                                fontFamily: 'Roboto_Regular'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.025,
                    left: parentWidth * 0.04,
                    right: parentWidth * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onDoubleTap: (){},
                      onTap: (){
                        if(mounted){
                          setState(() {
                            showDetails = !showDetails;
                          });
                        }

                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Text(
                          "More Details",
                          style: TextStyle(
                              color: CommonColor.RANK_ID_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Regular'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onDoubleTap: (){},
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AuctionBidHistory()));
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Text(
                          "Bid History",
                          style: TextStyle(
                              color: CommonColor.RANK_ID_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Regular'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.025, right: parentWidth * 0.03, left: parentWidth * 0.03),
                child: Visibility(
                  visible: showDetails,
                  child: Container(
                    height: SizeConfig.screenHeight*0.22,
                    color: CommonColor.REGISTER_AS_COLOR,
                    child: Column(
                     children: [

                       Padding(
                         padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.02, right: parentWidth*0.03),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Item Category :",
                               style: TextStyle(
                                   color: CommonColor.BLACK_COLOR,
                                   fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                   fontWeight: FontWeight.w400,
                                   fontFamily: 'Roboto_Regular'),
                             ),
                             Container(
                               color: Colors.transparent,
                               width: parentWidth * 0.43,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.only(left: parentWidth * 0.057),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Text(
                                           "Ferrous",
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
                         padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01, right: parentWidth*0.03),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Application/Use of Item :",
                               style: TextStyle(
                                   color: CommonColor.BLACK_COLOR,
                                   fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                   fontWeight: FontWeight.w400,
                                   fontFamily: 'Roboto_Regular'),
                             ),
                             Container(
                               color: Colors.transparent,
                               width: parentWidth * 0.43,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.only(left: parentWidth * 0.057),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Text(
                                           "NO",
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
                         padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01, right: parentWidth*0.03),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Size :",
                               style: TextStyle(
                                   color: CommonColor.BLACK_COLOR,
                                   fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                   fontWeight: FontWeight.w400,
                                   fontFamily: 'Roboto_Regular'),
                             ),
                             Container(
                               color: Colors.transparent,
                               width: parentWidth * 0.43,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.only(left: parentWidth * 0.057),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Text(
                                           "-",
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
                         padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01, right: parentWidth*0.03),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Weight :",
                               style: TextStyle(
                                   color: CommonColor.BLACK_COLOR,
                                   fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                   fontWeight: FontWeight.w400,
                                   fontFamily: 'Roboto_Regular'),
                             ),
                             Container(
                               color: Colors.transparent,
                               width: parentWidth * 0.43,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.only(left: parentWidth * 0.057),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Text(
                                           "-",
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
                         padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01, right: parentWidth*0.03),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text("Reserve Price :",
                               style: TextStyle(
                                   color: CommonColor.BLACK_COLOR,
                                   fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                   fontWeight: FontWeight.w400,
                                   fontFamily: 'Roboto_Regular'),
                             ),
                             Container(
                               color: Colors.transparent,
                               width: parentWidth * 0.43,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.only(left: parentWidth * 0.057),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Text(
                                           "99999999999999.00",
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
                         padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.015, right: parentWidth*0.03),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             GestureDetector(
                               onDoubleTap: (){},
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPhotos()));
                               },
                               child: Container(
                                 color: Colors.transparent,
                                 child: Text("View Photos",
                                   style: TextStyle(
                                       color: CommonColor.RANK_ID_COLOR,
                                       fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                       fontWeight: FontWeight.w500,
                                       fontFamily: 'Roboto_Regular'),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),



                     ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.025,
                    right: parentWidth * 0.04,
                bottom: parentHeight*0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onDoubleTap: () {},
                      onTap: () {

                      },
                      child: Container(
                        height: parentHeight * 0.047,
                        width: parentWidth * 0.27,
                        decoration: BoxDecoration(
                          color: CommonColor.CONTAINER_TIMMITING_COLOR,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: CommonColor.WHITE_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto_Regular'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
