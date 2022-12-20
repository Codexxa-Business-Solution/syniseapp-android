import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

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
        height: parentHeight*0.18,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Padding(
                  padding:  EdgeInsets.only(left: parentWidth*0.03),
                  child: Text("Demo Tender",
                    style: TextStyle(
                    color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*4.5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular'
                  ),
                  ),
                ),

                Container(
                  height: parentHeight*0.05,
                  width: parentWidth*0.5,
                  decoration: BoxDecoration(
                    color: CommonColor.EDIT_ICON_COLOR,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(13)),
                  ),
                  child: Center(
                    child: Text("Tender Id : DEMO10220002 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto_Regular'
                    ),),
                  ),
                )
                
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03),
                  child: Text("Description",
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,
                  top: parentHeight*0.02),
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
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,
                      top: parentHeight*0.02),
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
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: parentWidth*0.03, top: parentHeight*0.05),
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
                                    height: SizeConfig.screenHeight*0.8,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)
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
                        color: CommonColor.APP_BAR_COLOR,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text("View Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeHorizontal*3.5,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto_Regular'
                        ),),
                      ),
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }


  Widget getAllDialogueInfo(double parentHeight, double parentWidth){
    return Column(
      children: [

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03),
                child: Icon(Icons.clear,
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

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03),
                child: Text("Guaranted Specs",
                  style: TextStyle(
                      color: CommonColor.RANK_ID_COLOR,
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular',
                      decoration: TextDecoration.none
                  ),
                )
              ),
              Text("Lumps",
                style: TextStyle(
                    color: CommonColor.RANK_ID_COLOR,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto_Regular',
                    decoration: TextDecoration.none

                ),),
              Padding(
                  padding: EdgeInsets.only(right: parentWidth*0.07),
                  child: Text("Offgrades",
                    style: TextStyle(
                        color: CommonColor.RANK_ID_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontWeight: FontWeight.w500,
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
            color: CommonColor.PROFILE_COLOR,
            height: parentHeight*0.001,
          ),
        )

      ],
    );
  }

}
