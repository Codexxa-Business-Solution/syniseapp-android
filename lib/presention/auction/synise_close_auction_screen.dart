import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';



class CloseAuction extends StatefulWidget {
  const CloseAuction({Key? key}) : super(key: key);

  @override
  State<CloseAuction> createState() => _CloseAuctionState();
}

class _CloseAuctionState extends State<CloseAuction> {


  bool demoAuction = false;
  bool auctionInfo = false;
  bool arrowVisible = false;
  bool auctionList = false;

  String auctionHeadng = "Ferro Alloys Corporation Limited";


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


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.03,
                      left: SizeConfig.screenWidth * 0.03,
                      right: SizeConfig.screenWidth * 0.03),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Visibility(
                            visible: !auctionInfo,
                            child: GestureDetector(
                              onDoubleTap: (){},
                              onTap: (){
                                if(mounted){
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
                                height: SizeConfig.screenHeight * 0.05,
                                width: SizeConfig.screenWidth*0.94,
                                decoration: BoxDecoration(
                                  color: CommonColor.SUBMIT_BID,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05),
                                      child: Text(auctionHeadng.toString(),
                                        style: TextStyle(
                                            fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto_Regular'
                                        ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
                                      child: Row(
                                        children: [
                                          Image(
                                            image: AssetImage("assets/images/down_arrow.png"),
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
                              onDoubleTap: (){},
                              onTap: (){
                                if(mounted){
                                  setState(() {
                                    demoAuction = !demoAuction;
                                    auctionInfo = !auctionInfo;
                                    arrowVisible = !arrowVisible;
                                    auctionList = !auctionList;
                                  });
                                }
                              },
                              child: Container(
                                height: SizeConfig.screenHeight * 0.05,
                                width: SizeConfig.screenWidth*0.94,
                                decoration: BoxDecoration(
                                  color: CommonColor.SUBMIT_BID,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(13),
                                      topRight: Radius.circular(13)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05),
                                      child: Text(auctionHeadng,
                                        style: TextStyle(
                                            fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto_Regular'
                                        ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
                                      child: Row(
                                        children: [
                                          Stack(
                                            children: [
                                              Visibility(
                                                visible: !arrowVisible,
                                                child: const Image(
                                                  image: AssetImage("assets/images/down_arrow.png"),
                                                ),
                                              ),
                                              Visibility(
                                                visible: arrowVisible,
                                                child: const Image(
                                                  image: AssetImage("assets/images/up_arrow.png"),
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

                Visibility(
                  visible: auctionList,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 0.03,
                        top: SizeConfig.screenHeight*0.08,
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
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                height: SizeConfig.screenHeight*0.02,
              ),
            ],
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
                  (context, index) {
                return  getCloseAuctionInfo(SizeConfig.screenHeight, SizeConfig.screenWidth);
              },
            ))

      ],
    );
  }

  Widget getCloseAuctionInfo(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(bottom: parentHeight*0.03, left: parentWidth*0.03,right: parentWidth*0.03,),
      child: Container(
        height: parentHeight*0.34,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 7),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02,
              left: parentWidth *0.07, right: parentWidth*0.07),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rank : 1",
                        style: TextStyle(
                            color: CommonColor.RANK_NUMBER_COLOR,
                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                            fontFamily: 'Roboto_normal',
                            fontWeight: FontWeight.w500
                        ),),
                      Row(
                        children: [
                          Text("Catalogue No. :",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*2.9,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400
                            ),),
                          Text(" A21090002",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*2.9,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400
                            ),),
                        ],
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lot A1 Jan/022:Jigging slag / Bhadrak.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Quantity",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),

                        Text("1000",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*2.9,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("UOM",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),

                        Text("MT",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*2.9,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Current bid",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),

                        Text("2400.0",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*2.9,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your bid",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),

                        Text("2400.0",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*2.9,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("My Quantity",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),

                        Text("100",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*2.9,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Alloted  Quantity",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),

                        Text("5000",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*2.9,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Status",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),

                        Text("Pending",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*2.9,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
