import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/Tender/synise_submit_bid.dart';

class TenderHomeScreen extends StatefulWidget {
  const TenderHomeScreen({Key? key}) : super(key: key);

  @override
  State<TenderHomeScreen> createState() => _TenderHomeScreenState();
}

class _TenderHomeScreenState extends State<TenderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: SizeConfig.screenHeight*0.9,
            child: ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.07),
                itemBuilder: (context, index) {
                  return getTenderLayout(SizeConfig.screenHeight, SizeConfig.screenWidth);
                }),
          )
        ],
      )
    );
  }


  getTenderLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03,
        left: parentWidth*0.03,
        right: parentWidth*0.03,),
      child: Container(
        height: parentHeight*0.26,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: parentHeight*0.05,

              // decoration: const BoxDecoration(
              //   color: CommonColor.EDIT_ICON_COLOR,
              //   borderRadius: BorderRadius.only(topRight: Radius.circular(13)),
              // ),
              child: Padding(
                padding:  EdgeInsets.only(top: parentHeight*0.02,left: parentWidth*0.45),
                child: Text("Tender Id : DEMO10220002 ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto_Regular'
                ),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.03,),
              child: Text("Ferro Alloys Corporation Limited.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.2,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto_Regular'
                ),maxLines: 1,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.01),
                  child: Text("Material -",
                    style: TextStyle(
                        color: CommonColor.APP_BAR_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.7,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                  child: Text("HC Fe-Cr/ Charge Chrome (Lumps )",
                    style: TextStyle(
                        color: CommonColor.TENDER_BOX_TEXT,
                        fontSize: SizeConfig.blockSizeHorizontal*3.7,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.01),
                  child: Text("Location -",
                    style: TextStyle(
                        color: CommonColor.APP_BAR_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.7,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                  child: Text("Pune",
                    style: TextStyle(
                        color: CommonColor.TENDER_BOX_TEXT,
                        fontSize: SizeConfig.blockSizeHorizontal*3.7,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,
                  top: parentHeight*0.01),
                  child: Column(
                    children: [

                      Text("Opening Date",
                      style: TextStyle(
                        color: CommonColor.AGREE_BUTTON_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto_Regular'
                      ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.015),
                        child: Text("21 Nov. 2022",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.005),
                        child: Text("01:17:00 AM",
                          style: TextStyle(
                              color: CommonColor.TENDER_OPEN_TIME_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.3,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto_Regular'
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,
                      top: parentHeight*0.01),
                  child: Column(
                    children: [

                      Text("Closing Date",
                        style: TextStyle(
                            color: CommonColor.DISAGREE_BUTTON_COLOR,
                            fontSize: SizeConfig.blockSizeHorizontal*4.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto_Regular'
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.015),
                        child: Text("21 Nov. 2022",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.005),
                        child: Text("01:17:00 AM",
                          style: TextStyle(
                              color: CommonColor.TENDER_OPEN_TIME_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.3,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto_Regular'
                          ),
                        ),
                      ),

                    ],
                  ),
                ),



                Column(
                  children: [

                    Text("View Details",
                      style: TextStyle(
                          color: CommonColor.VIEW_DETAILS_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*4.1,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto_Regular',
                        decoration: TextDecoration.underline,
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: parentWidth*0.03, top: parentHeight*0.01),
                      child: GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){


                          showGeneralDialog(
                              barrierLabel: "Label",
                              barrierDismissible: true,
                              barrierColor: Colors.black.withOpacity(0.05),
                              transitionDuration: Duration(milliseconds: 200),
                              context: context,
                              pageBuilder: (dialogContext, anim1, anim2){
                                return Container();
                              },
                              transitionBuilder: (dialogContext, anim1, anim2, child) {
                                return Transform.scale(
                                  scale: anim1.value,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,
                                          right: SizeConfig.screenWidth*0.03,
                                          top: SizeConfig.screenHeight*0.02),
                                      child: Container(
                                        height: SizeConfig.screenHeight*0.85,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.6),
                                              spreadRadius: 5,
                                              blurRadius: 6,
                                              offset: Offset(0, 2),
                                            )
                                          ],
                                        ),
                                        child: getAllDialogueInfo(SizeConfig.screenHeight, SizeConfig.screenWidth),
                                      ),
                                    ),
                                  ),);

                              });


                        },
                        child: Container(
                          height: parentHeight*0.045,
                          width: parentWidth*0.25,
                          decoration: BoxDecoration(
                            color: CommonColor.TENDER_BOX_TEXT,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto_Regular'
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )

          ],
        ),
      ),
    );
  }


  Widget getAllDialogueInfo(double parentHeight, double parentWidth){
    return Padding(
      padding:  EdgeInsets.only(bottom: parentHeight*0.03),
      child: ListView(
        shrinkWrap: true,
        children: [

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03),
                  child: const Icon(Icons.clear,
                    color: Colors.transparent,
                  ),
                ),

                Text("Composition of Material",
                  style: TextStyle(
                      color: CommonColor.RANK_ID_COLOR,
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),
                Padding(
                  padding: EdgeInsets.only(right: parentWidth*0.03),
                  child: GestureDetector(
                    onDoubleTap: (){},
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Icon(Icons.clear,
                        color: CommonColor.CANCLE_ICON_COLOR,
                        size: SizeConfig.blockSizeHorizontal*5.0,
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: parentHeight*0.04,

                // decoration: const BoxDecoration(
                //   color: CommonColor.EDIT_ICON_COLOR,
                //   borderRadius: BorderRadius.only(topRight: Radius.circular(13)),
                // ),

              ),
              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03,),
                child: Text("Ferro Alloys Corporation Limited.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*4.2,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),maxLines: 1,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.01),
                    child: Text("Material -",
                      style: TextStyle(
                          color: CommonColor.APP_BAR_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto_Regular',
                          decoration: TextDecoration.none


                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                    child: Text("HC Fe-Cr/ Charge Chrome (Lumps )",
                      style: TextStyle(
                          color: CommonColor.TENDER_BOX_TEXT,
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto_Regular',
                          decoration: TextDecoration.none

                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.01),
                    child: Text("Location -",
                      style: TextStyle(
                          color: CommonColor.APP_BAR_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto_Regular',                    decoration: TextDecoration.none

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                    child: Text("Pune",
                      style: TextStyle(
                          color: CommonColor.TENDER_BOX_TEXT,
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto_Regular',                    decoration: TextDecoration.none

                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.03),
                    child: Text("Guaranteed Specs",
                      style: TextStyle(
                          color: CommonColor.BLACK_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto_Regular',
                          decoration: TextDecoration.none
                      ),
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(right: parentWidth*0.1),
                  child: Text("Lumps",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular',
                        decoration: TextDecoration.none

                    ),),
                ),
                Padding(
                    padding: EdgeInsets.only(right: parentWidth*0.07),
                    child: Text("Offgrades",
                      style: TextStyle(
                          color: CommonColor.BLACK_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto_Regular',
                          decoration: TextDecoration.none
                      ),
                    )
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.01, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lumps",
                  style: TextStyle(
                      color: Colors.transparent,
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15),
                  child: Text("10-150/\nOther Size",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular',
                        decoration: TextDecoration.none

                    ),),
                ),

                Padding(
                  padding: EdgeInsets.only(right: parentWidth*0.03),
                  child: Container(
                    // color: Colors.blue,
                    width: parentWidth*0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("0-10",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Container(
                          color: CommonColor.DIVIDER_COLOR,
                          height: parentHeight*0.035,
                          width: parentWidth*0.002,
                        ),
                        Text("0-10",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.01),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Cr",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("57.5 min",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("53.0 min",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("53.0 min",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("C",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("8.2 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("8.2 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("8.2 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Si",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("4.25 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("4.25 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("4.25 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("P",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0.04 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("0.04 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("0.04 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("S",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0.05 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("0.05 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("0.05 max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("HCFC Size\nCompliance",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("90% min",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("90% min",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("90% min",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Oversize",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("10% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("10% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),


          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Undersize",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("NA",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("10% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              color: CommonColor.DIVIDER_COLOR,
              height: parentHeight*0.001,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Moisturfe",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none

                  ),),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.15, right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.49,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("0.5% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("0.5% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),
                        Text("0.5% max",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular',
                              decoration: TextDecoration.none

                          ),),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SubmitBid()));

            },
            child: Padding(
              padding: EdgeInsets.only(top: parentHeight*0.03,left: parentWidth*0.3,right: parentWidth*0.3),
              child: Container(
                height: parentHeight*0.05,
                decoration: BoxDecoration(
                    color: CommonColor.TENDER_BOX_TEXT,
                    borderRadius: BorderRadius.circular(7)
                ),
                child: Center(
                  child: Text("Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto_Regular',
                        decoration: TextDecoration.none
                    ),),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }





}
