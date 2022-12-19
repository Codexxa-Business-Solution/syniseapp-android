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
      body: Column(
        children: [

          Container(
            height: SizeConfig.screenHeight * 0.1,
            child:
            getHeadingName(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),

          Container(
            height: SizeConfig.screenHeight * 0.9,
            child: getBidHistoryLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
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


  Widget getBidHistoryLayout(double parentHeight, double parentWidth){
    return Container(
      height: SizeConfig.screenHeight * 0.9,
      color: Colors.white,
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.only(bottom: parentHeight*0.07),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: parentWidth*0.03, right: parentWidth*0.03, top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.11,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.05),
                      child: Row(
                        children: [

                          Text("Bid Time :",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto_Regular'
                          ),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: parentWidth*0.05),
                                child: Text("2/10/2022",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'
                                ),),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: parentWidth*0.02),
                                child: Text("11:35:09 AM",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*2.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'
                                ),),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

                              Text("Bid Amount :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: parentWidth*0.03),
                                    child: Text("1500.00",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto_Regular'
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: parentWidth*0.05),
                            child: Row(
                              children: [

                                Text("Quantity :",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto_Regular'
                                  ),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: parentWidth*0.02),
                                      child: Text("200",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Roboto_Regular'
                                        ),),
                                    ),
                                  ],
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
            );
          }),
    );
  }
}
