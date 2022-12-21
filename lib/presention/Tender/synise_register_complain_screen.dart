import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

class TenderRegisterComplaintScreen extends StatefulWidget {
  const TenderRegisterComplaintScreen({Key? key}) : super(key: key);

  @override
  State<TenderRegisterComplaintScreen> createState() =>
      _TenderRegisterComplaintScreenState();
}

class _TenderRegisterComplaintScreenState
    extends State<TenderRegisterComplaintScreen> {


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
                  itemCount: 6,
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
        height: parentHeight*0.17,
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
                  child: Text("Product",
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
                    child: Text("Date : 11/08/2022 6:02:00PM ",
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
                  child: Text("Test2",
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding:  EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.01),
                  child: Row(
                    children: [
                      Text("Corrective Action : Demo",
                        style: TextStyle(
                            color: CommonColor.AGREE_BUTTON_COLOR,
                            fontSize: SizeConfig.blockSizeHorizontal*4.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto_Regular'
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: parentWidth*0.17),
                        child: Container(
                          width: SizeConfig.screenHeight*0.06,
                          height: SizeConfig.screenWidth*0.1,
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.only(top: parentHeight*0.015),
                            child: Text("Status :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: SizeConfig.screenHeight*0.07,
                        height: SizeConfig.screenWidth*0.1,

                        child: Padding(
                          padding: EdgeInsets.only(top: parentHeight*0.015),
                          child: Text("Closed",
                            style: TextStyle(
                                color: CommonColor.DISAGREE_BUTTON_COLOR,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03),
                  child: Text("Resolution Date : 11/08/2022 6:29:46 PM",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),



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
