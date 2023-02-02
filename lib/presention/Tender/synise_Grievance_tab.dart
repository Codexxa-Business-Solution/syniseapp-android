import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/Tender/synise_register_complain_screen.dart';

import 'add_complaint_registration.dart';

class TenderGrievanceScreen extends StatefulWidget {
  const TenderGrievanceScreen({Key? key,   required this.onNext,}) : super(key: key);

  final VoidCallback onNext;

  @override
  State<TenderGrievanceScreen> createState() => _TenderGrievanceScreenState();
}



class _TenderGrievanceScreenState extends State<TenderGrievanceScreen> with SingleTickerProviderStateMixin {




  TextEditingController ComplaintDetails = TextEditingController();




  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:
      ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                height: SizeConfig.screenHeight*0.9,
                child: ListView.builder(
                    itemCount: 2,

                    itemBuilder: (context, index) {
                      return getGrievanceLayout(SizeConfig.screenHeight, SizeConfig.screenWidth);
                    }),
              ),
              uploadDocument(SizeConfig.screenHeight, SizeConfig.screenWidth),
            ],
          ),


        ],
      ),
    );
  }

Widget  getGrievanceLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03,
        left: parentWidth*0.01,
        right: parentWidth*0.01,),
      child: Container(
        height: parentHeight*0.20,
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
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.02),
                  child: Text("Product",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal*4.2,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto_Regular'
                    ),maxLines: 1,
                  ),
                ),
                Container(
                  height: parentHeight*0.03,


                  // decoration: const BoxDecoration(
                  //   color: CommonColor.EDIT_ICON_COLOR,
                  //   borderRadius: BorderRadius.only(topRight: Radius.circular(13)),
                  // ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: parentHeight*0.01,left: parentWidth*0.20),
                        child: Text("Date :",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'
                          ),),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: parentHeight*0.01),
                        child: Text(" 11/08/2022 ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'
                          ),),
                      ),  Padding(
                        padding:  EdgeInsets.only(top: parentHeight*0.01),
                        child: Text("6:02:00 PM ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto_Regular'
                          ),),
                      ),
                    ],
                  ),


                ),

              ],
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.01),
                  child: Text("Size Variation",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,top: parentHeight*0.02),
                  child: Text("Corrective Action :",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                  child: Text("Monitoring in next lot.",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
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
                  child: Text("Status :",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                  child: Text(" Closed",
                    style: TextStyle(
                        color: CommonColor.DISAGREE_BUTTON_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
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
                  child: Text("Resolution Date :",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                  child: Text(" 11/08/2022",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.02,top: parentHeight*0.01),
                  child: Text(" 6:29:47 PM",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal*3.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Regular'
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(left: parentWidth*0.03,
            //           top: parentHeight*0.01),
            //       child: Column(
            //         children: [
            //
            //           Text("Status:",
            //             style: TextStyle(
            //                 color: CommonColor.AGREE_BUTTON_COLOR,
            //                 fontSize: SizeConfig.blockSizeHorizontal*4.0,
            //                 fontWeight: FontWeight.w500,
            //                 fontFamily: 'Roboto_Regular'
            //             ),
            //           ),
            //
            //           Padding(
            //             padding: EdgeInsets.only(top: parentHeight*0.015),
            //             child: Text("21 Nov. 2022",
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: SizeConfig.blockSizeHorizontal*3.5,
            //                   fontWeight: FontWeight.w400,
            //                   fontFamily: 'Roboto_Regular'
            //               ),
            //             ),
            //           ),
            //
            //           Padding(
            //             padding: EdgeInsets.only(top: parentHeight*0.005),
            //             child: Text("01:17:00 AM",
            //               style: TextStyle(
            //                   color: CommonColor.TENDER_OPEN_TIME_COLOR,
            //                   fontSize: SizeConfig.blockSizeHorizontal*3.3,
            //                   fontWeight: FontWeight.w700,
            //                   fontFamily: 'Roboto_Regular'
            //               ),
            //             ),
            //           ),
            //
            //         ],
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(left: parentWidth*0.03,
            //           top: parentHeight*0.01),
            //       child: Column(
            //         children: [
            //
            //           Text("Closing Date",
            //             style: TextStyle(
            //                 color: CommonColor.DISAGREE_BUTTON_COLOR,
            //                 fontSize: SizeConfig.blockSizeHorizontal*4.0,
            //                 fontWeight: FontWeight.w500,
            //                 fontFamily: 'Roboto_Regular'
            //             ),
            //           ),
            //
            //           Padding(
            //             padding: EdgeInsets.only(top: parentHeight*0.015),
            //             child: Text("21 Nov. 2022",
            //               style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: SizeConfig.blockSizeHorizontal*3.5,
            //                   fontWeight: FontWeight.w400,
            //                   fontFamily: 'Roboto_Regular'
            //               ),
            //             ),
            //           ),
            //
            //           Padding(
            //             padding: EdgeInsets.only(top: parentHeight*0.005),
            //             child: Text("01:17:00 AM",
            //               style: TextStyle(
            //                   color: CommonColor.TENDER_OPEN_TIME_COLOR,
            //                   fontSize: SizeConfig.blockSizeHorizontal*3.3,
            //                   fontWeight: FontWeight.w700,
            //                   fontFamily: 'Roboto_Regular'
            //               ),
            //             ),
            //           ),
            //
            //         ],
            //       ),
            //     ),
            //
            //
            //
            //
            //   ],
            // )

          ],
        ),
      ),
    );
  }
  Widget uploadDocument(double parentHeight,double parentWidth){
    return GestureDetector(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddComplaintRegistration()));

    },onDoubleTap: (){},

      child: Padding(
        padding:  EdgeInsets.only(left: parentWidth*0.73,top: parentHeight*0.66),
        child: Row(
          children: [
            Stack(
              children:  [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.080,
                  width: SizeConfig.screenHeight * 0.080,
                  child: const Image(
                    image:  AssetImage("assets/images/plueicon.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                // Image(image: AssetImage('assets/images/uploadOne.png')),

                // Padding(
                //   padding:  EdgeInsets.only(left: parentHeight*0.012,top: parentWidth*0.009),
                //   child: SizedBox(
                //     height: SizeConfig.screenHeight * 0.1,
                //     width: SizeConfig.screenHeight * 0.072,
                //     child: const Image(
                //       image:  AssetImage("assets/images/plus.png"),
                //       fit: BoxFit.contain,
                //     ),
                //   ),
                // )

              ],
            ),



          ],
        ),
      ),
    );
  }

}


