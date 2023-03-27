import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/Tender/synise_my_profile_edit.dart';



class TenderMyProfileScreen extends StatefulWidget {
  const TenderMyProfileScreen({Key? key}) : super(key: key);

  @override
  State<TenderMyProfileScreen> createState() => _TenderMyProfileScreen();
}

class _TenderMyProfileScreen extends State<TenderMyProfileScreen> {


  bool companyInfo = false;
  bool comInfo = false;


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            // color: Colors.red,
            height: SizeConfig.screenHeight*0.22,
            child: getProfileIcon(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.05,
                left: SizeConfig.screenWidth*0.03,
                right: SizeConfig.screenWidth*0.03),
            child: Container(
              decoration: BoxDecoration(
                color: CommonColor.PROFILE,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              height: SizeConfig.screenHeight*0.8,
              child: getAllDetailsLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
            ),
          ),
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
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditMyProfile()));

                },
                child: Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.02, bottom: parentHeight*0.005),
                  child: Icon(Icons.edit,
                    size: SizeConfig.blockSizeHorizontal*6,
                    color: CommonColor.EDIT_ICON_COLOR,),
                ),
              )
            ],
          ),
        )

      ],
    );
  }

  Widget getAllDetailsLayout(double parentHeight, double parentWidth){
    return Column(
      // shrinkWrap: true,
      children: [
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Email Address",
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
                      child: Text("grishp@synise.com",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Address",
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
                      child: Text("Pune",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("City",
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
                      child: Text("Pune",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Pin/Zip Code",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.8,
                    fontWeight: FontWeight.w500
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Country",
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
                      child: Text("India",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("State",
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
                      child: Text("Maharashtra",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Phone No.",
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
                      child: Text("9960328369",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Mobile No.",
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
                      child: Text("9960328369",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("No. of Employee",
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
                      child: Text("Not Specified",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Company Profile",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Your Name",
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
                      child: Text("Sachin",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Designation",
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
                      child: Text("Consultant",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("GST/VAT/IE Code",
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
        /*Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("CST",
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
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("VAT No.",
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
        ),*/
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.07,
              left: parentWidth*0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("PAN",
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
                      child: Text("-",
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
              left: parentWidth*0.08,bottom: parentHeight*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Documents",
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
                      child: Text("Suzuki.pdf",
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
      ],
    );
  }
}
