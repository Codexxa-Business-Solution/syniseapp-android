import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';



class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreen();
}

class _MyProfileScreen extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.red,
            height: SizeConfig.screenHeight*0.22,
            child: getProfileIcon(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01,
                left: SizeConfig.screenWidth*0.03, right: SizeConfig.screenWidth*0.03),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                borderRadius: BorderRadius.circular(7)
              ),
              height: SizeConfig.screenHeight*0.67,
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
                height: parentHeight*0.15,
                width: parentWidth*0.35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CommonColor.PROFILE_COLOR,
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
                padding: EdgeInsets.only(left: parentWidth*0.05),
                child: Text("Bidder1",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
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
          padding: EdgeInsets.only(top: parentHeight*0.03, right: parentWidth*0.11,
              left: parentWidth*0.11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Group Company /\nSubsidiary of",
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                fontWeight: FontWeight.w500
              ),
              ),

              Text("XYZ Technologies",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                    fontWeight: FontWeight.w500
                ),
              )

            ],
          ),
        ),

      ],
    );
  }
}
