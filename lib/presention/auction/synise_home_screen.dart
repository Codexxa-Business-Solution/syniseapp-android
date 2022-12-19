import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool demoAuction = false;
  bool auctionInfo = false;
  bool arrowVisible = false;
  bool auctionList = false;

  String auctionHeadng = "Demo Auction";


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
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1),
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: SizeConfig.screenHeight*0.1,
            // color: Colors.red,
            child: Padding(
              padding: EdgeInsets.only(
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
                            height: SizeConfig.screenHeight * 0.066,
                            width: SizeConfig.screenWidth*0.94,
                            decoration: BoxDecoration(
                              color: CommonColor.REGISTER_AS_COLOR,
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
                            height: SizeConfig.screenHeight * 0.066,
                            width: SizeConfig.screenWidth*0.94,
                            decoration: BoxDecoration(
                              color: CommonColor.REGISTER_AS_COLOR,
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
          ),
          Stack(
            children: [

              Container(
                height: SizeConfig.screenHeight*0.9,
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.15),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.screenHeight * 0.03,
                            left: SizeConfig.screenWidth * 0.03,
                            right: SizeConfig.screenWidth * 0.03),
                        child: getAuctionInfo(SizeConfig.screenHeight, SizeConfig.screenWidth),
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
                    height: SizeConfig.screenHeight*0.31,
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
                            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.013),
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03),
                                      child: GestureDetector(
                                        onDoubleTap: (){},
                                        onTap: (){
                                          if(mounted){
                                            setState(() {
                                              demoAuction = !demoAuction;
                                              auctionInfo = !auctionInfo;
                                              arrowVisible = !arrowVisible;
                                              auctionList = !auctionList;
                                              auctionHeadng = auctionListData[index].toString();
                                              print("add");
                                            });
                                          }


                                        },
                                        child: Container(
                                          width: SizeConfig.screenWidth*0.9,
                                          color: Colors.transparent,
                                          child: Text(auctionListData[index],
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Robot_Regular'
                                          ),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.009),
                                  child: Container(
                                    height: SizeConfig.screenHeight*0.001,
                                    color: CommonColor.PROFILE_COLOR,
                                  ),
                                )

                              ],
                            ),
                          );
                        })
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }


  Widget getAuctionInfo(double parentHeight, double parentWidth){
    return Column(
      children: [
        Container(
          height: parentHeight*0.09,
          decoration: BoxDecoration(
            color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(13),
                  topRight: Radius.circular(13))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.07),
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Start Time : 11/12/2022",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                            fontFamily: 'Roboto_normal',
                            fontWeight: FontWeight.w400
                          ),),
                          Padding(
                            padding: EdgeInsets.only(top: parentHeight*0.005),
                            child: Text("5:00:00 AM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                  fontFamily: 'Roboto_normal',
                                  fontWeight: FontWeight.w400
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: parentWidth*0.07),
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("End Time : 11/12/2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400
                            ),),
                          Padding(
                            padding: EdgeInsets.only(top: parentHeight*0.005),
                            child: Text("11:55:00 PM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                  fontFamily: 'Roboto_normal',
                                  fontWeight: FontWeight.w400
                              ),),
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
        Container(
          height: parentHeight*0.3,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),
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
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth *0.07, right: parentWidth*0.07),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rank : 2",
                          style: TextStyle(
                              color: CommonColor.RANK_NUMBER_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*4.0,
                              fontFamily: 'Roboto_normal',
                              fontWeight: FontWeight.w500
                          ),),
                        Row(
                          children: [
                            Text("ID :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                  fontFamily: 'Roboto_normal',
                                  fontWeight: FontWeight.w400
                              ),),
                            Text(" A21090002",
                              style: TextStyle(
                                  color: CommonColor.RANK_ID_COLOR,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                  fontFamily: 'Roboto_normal',
                                  fontWeight: FontWeight.w400
                              ),),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight*0.01),
                          child: Text("Demo 165/FACTOR",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400
                            ),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("My Quantity",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                    fontFamily: 'Roboto_normal',
                                    fontWeight: FontWeight.w400
                                ),),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight*0.01),
                                child: Text("200",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal*3.4,
                                      fontFamily: 'Roboto_normal',
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("My Bid",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                    fontFamily: 'Roboto_normal',
                                    fontWeight: FontWeight.w400
                                ),),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight*0.01),
                                child: Text("1500.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal*3.4,
                                      fontFamily: 'Roboto_normal',
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Highest Bid",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                    fontFamily: 'Roboto_normal',
                                    fontWeight: FontWeight.w400
                                ),),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight*0.01),
                                child: Text("2100.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal*3.4,
                                      fontFamily: 'Roboto_normal',
                                      fontWeight: FontWeight.w500
                                  ),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.03),
                      child: Row(
                        children: [
                          Container(
                            height: parentHeight*0.004,
                            width: parentWidth*0.3,
                            color: CommonColor.RANK_ID_COLOR,
                            child: Text("Hi",
                            style: TextStyle(
                              color: Colors.transparent
                            ),),
                          ),
                          Container(
                            height: parentHeight*0.003,
                            width: parentWidth*0.5,
                            color: CommonColor.REMAINING_INDICATOR_COLOR,
                            child: Text("Hi",
                              style: TextStyle(
                                  color: Colors.transparent
                              ),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Time Left",
                            style: TextStyle(
                                color: CommonColor.Hint_TEXT_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400
                            ),),
                          Text("11:42:14",
                            style: TextStyle(
                                color: CommonColor.Hint_TEXT_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontFamily: 'Roboto_normal',
                                fontWeight: FontWeight.w400
                            ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.03),
                      child: GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){

                        },
                        child: Row(
                          mainAxisAlignment:  MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: CommonColor.APP_BAR_COLOR,
                                  borderRadius: BorderRadius.circular(7)),
                              height: SizeConfig.screenHeight * 0.047,
                              width: SizeConfig.screenWidth * 0.25,
                              child: Center(child: Text("View Details",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto-Medium'
                                ),)),
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
