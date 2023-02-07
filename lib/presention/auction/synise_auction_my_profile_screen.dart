import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';



class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreen();
}

class _MyProfileScreen extends State<MyProfileScreen> {


  bool companyInfo = false;
  bool comInfo = false;


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1),
        children: [
          Container(
            // color: Colors.red,
            height: SizeConfig.screenHeight*0.22,
            child: getProfileIcon(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01,
                left: SizeConfig.screenWidth*0.03, right: SizeConfig.screenWidth*0.03),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              height: SizeConfig.screenHeight*0.72,
              child: getAllDetailsLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.02,
                left: SizeConfig.screenWidth * 0.03,
                right: SizeConfig.screenWidth * 0.03),
            child: Row(
              children: [
                Stack(
                  children: [
                    Visibility(
                      visible: !comInfo,
                      child: GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          if(mounted){
                            setState(() {
                              companyInfo = !companyInfo;
                              comInfo = !comInfo;
                            });
                          }
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.066,
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
                                child: Text("Company Information",
                                  style: TextStyle(
                                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
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
                      visible: companyInfo,
                      child: GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          if(mounted){
                            setState(() {
                              companyInfo = !companyInfo;
                              comInfo = !comInfo;
                            });
                          }
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.066,
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
                                child: Text("Company Information",
                                  style: TextStyle(
                                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
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
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: companyInfo,
            child: Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.screenWidth * 0.03,
                  right: SizeConfig.screenWidth * 0.03),
              child: Container(
                height: SizeConfig.screenHeight*0.46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 6,
                      offset: Offset(3, 5),
                    )
                  ],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13)),

                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Annual Turnover",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("XYZ Technologies",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Curency",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("INR",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("No. of Employee",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("Between 501 to 1000",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Company Profile",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("Pune",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.007, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: SizeConfig.screenWidth*0.04),
                                    child: Text("(A brief description on the major activities of your organisation, your setup, etc.)",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: SizeConfig.blockSizeHorizontal*2.0,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto_Regular'
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.025, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Major Awards /\nAchievements",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("West",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Designation",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("Deputy Director",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
                    Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03, right: SizeConfig.screenWidth*0.07,
                          left: SizeConfig.screenWidth*0.08),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text("Department",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Regular'
                            ),
                          ),

                          Container(
                            width: SizeConfig.screenWidth*0.4,
                            // color: Colors.red,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("Demoauction",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.4,
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

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getProfileIcon(double parentHeight, double parentWidth){
    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.14,
                width: parentWidth*0.35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CommonColor.PROFILE_COLOR,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0.1,
                      blurRadius: 5,
                      offset: Offset(3, 5),
                    )
                  ],
                ),
                child: Center(
                    child: Image(
                      image: AssetImage("assets/images/no_image.png"),
                    )
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.06),
                child: Text("Bidder1",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.blockSizeHorizontal*4.5,
                  fontFamily: 'Roboto-Medium',
                  fontWeight: FontWeight.w600
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.01, bottom: parentHeight*0.005),
                child: Icon(Icons.edit,
                size: SizeConfig.blockSizeHorizontal*5,
                color: CommonColor.EDIT_ICON_COLOR,),
              )
            ],
          ),
        )

      ],
    );
  }

  Widget getAllDetailsLayout(double parentHeight, double parentWidth){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Group Company /\nSubsidiary of",
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("XYZ Technologies",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Email Address",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("jayashrig@synise.com",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Website",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("www.abcd.com",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Address 1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("Pune",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Address 2",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                    fontWeight: FontWeight.w500
                ),
              ),

              Container(
                width: parentWidth*0.4,
                // color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                      child: Text("Pune",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("City",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("Pune",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Pin /Zip Code",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("777666",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Country",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("India",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("State",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("Maharashtra",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Phone No.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("0202423157000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Mobile No.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("9568742631",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Fax",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("45454545454000",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("GST No.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("GST52586XXX",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("PAN NO.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
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
                      child: Text("PAN3214587",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
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

      ],
    );
  }
}
