import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
int index = 0;
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          SyniseText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          LoginText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          TenderAuctionLogin(SizeConfig.screenHeight,SizeConfig.screenWidth),
        ],
      ),
    );
  }

  Widget SyniseText(double parentHeight, double parentWidth) {
    return Container(

        child: Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.18,
              left: parentWidth * 0.3,
              right: parentWidth * 0.3),
          child: const Center(
              child: Image(
                  image: AssetImage(
            "assets/images/applogo.png",
          ))),
        ));
  }

  Widget LoginText(double parentHeight, double parentWidth) {
    return  Container(
      height: parentHeight*0.15,

      child: Center(
        child: Text("Login",style:TextStyle(  color: CommonColor.BLACK_COLOR,
          fontSize: SizeConfig.blockSizeHorizontal * 8.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto_Bold',
        ),
    ),
      ));
  }

  Widget TenderAuctionLogin(double parentHeight,double parentWidth){
    return Container(
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [

                GestureDetector(
                  onTap: () {
                    if (mounted)
                      setState(() {
                        index = 1;
                      });
                  },
                  onDoubleTap: () {},
                  child: Container(
                    height: parentHeight * 0.07,
                    width: parentWidth*0.4,
                    decoration: BoxDecoration(
                      color: index == 1
                          ? CommonColor.TENDER_BOX_TEXT
                          : CommonColor.TENDER_TEXT,
                 /*     border: Border.all(
                          width: 1,
                          style: BorderStyle.solid,),*/ //Border.
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  child: Center(
                    child: const Text("Tender",style: TextStyle(color: CommonColor.BLACK_COLOR,fontFamily: 'Roboto-Regular',fontWeight:FontWeight.w700,
                      fontSize: 14, ),),
                  ),
              ),
                ),
              const Text("Auction",style: TextStyle(color: CommonColor.BLACK_COLOR,fontFamily: 'Roboto-Regular',fontWeight:FontWeight.w700,
                fontSize: 14,))
            ],
          ),

        ],
      )
    );
  }
}
