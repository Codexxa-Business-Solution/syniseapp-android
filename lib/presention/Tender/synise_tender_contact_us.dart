import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';



class TenderContactUs extends StatefulWidget {
  const TenderContactUs({Key? key}) : super(key: key);

  @override
  State<TenderContactUs> createState() => _TenderContactUsState();
}

class _TenderContactUsState extends State<TenderContactUs> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          emailAddressLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
          careNumberLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
        ],
      ),
    );
  }


  Widget emailAddressLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.055),
      child: Column(
        children: [

          Container(
            height: parentHeight*0.06,
            width: parentWidth*0.9,
            decoration: BoxDecoration(
              color: CommonColor.SUBMIT_BID,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.05),
                  child: Text("Email Id",
                  style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium',
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),),
                ),
              ],
            ),
          ),
          Container(
            height: parentHeight*0.06,
            width: parentWidth*0.9,
            decoration: BoxDecoration(
                color: CommonColor.WHITE_COLOR,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)
                ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.05),
                  child: Text("contact@synise.com",
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontFamily: 'Roboto_Medium',
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }

  Widget careNumberLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.055),
      child: Column(
        children: [

          Container(
            height: parentHeight*0.06,
            width: parentWidth*0.9,
            decoration: BoxDecoration(
                color: CommonColor.SUBMIT_BID,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.05),
                  child: Text("Customer Care Number",
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontFamily: 'Roboto_Medium',
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                    ),),
                ),
              ],
            ),
          ),
          Container(
            height: parentHeight*0.06,
            width: parentWidth*0.9,
            decoration: BoxDecoration(
              color: CommonColor.WHITE_COLOR,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                )
              ],
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.05),
                  child: Text("8596247563",
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontFamily: 'Roboto_Medium',
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: parentWidth*0.05),
                  child: Icon(
                    Icons.call
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
