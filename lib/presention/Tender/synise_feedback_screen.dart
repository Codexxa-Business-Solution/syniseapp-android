import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

class TenderFeedbackScreen extends StatefulWidget {
  const TenderFeedbackScreen({Key? key}) : super(key: key);

  @override
  State<TenderFeedbackScreen> createState() => _TenderFeedbackScreenState();
}

class _TenderFeedbackScreenState extends State<TenderFeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return   Scaffold(
      body:ListView(
        shrinkWrap: true,
        children: [
          allReview(SizeConfig.screenHeight,SizeConfig.screenWidth)
        ],
      ),
    );
  }
  Widget allReview(double parentHeight,double parentWidth){
    return SizedBox(
      height: parentHeight*0.9,
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.03,
                    right: SizeConfig.screenWidth * 0.03,
                    top: SizeConfig.screenHeight * 0.02,
                    bottom: SizeConfig.screenHeight * 0.02,
                  ),
                  child: const Text(
                    "Chemical Quality Conformance to guaranteed Specification and Test Certificate issued.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:
                        16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Robot_Regular'),
                    textAlign: TextAlign.justify,
                  ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    Padding(
                      padding:  EdgeInsets.only(right: SizeConfig.screenHeight*0.02),
                      child: Container(
                        width: SizeConfig.screenWidth * 0.25,
                        height: SizeConfig.screenHeight * 0.05,
                        decoration: BoxDecoration(
                          color: CommonColor.TENDER_BOX_TEXT,
                          border: Border.all(
                              width: 1, color: CommonColor.AGREE_BUTTON_COLOR), //Border.
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),

                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Center(child: Text("Agree",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: SizeConfig.screenHeight*0.02),
                      child: Container(
                        width: SizeConfig.screenWidth * 0.25,
                        height: SizeConfig.screenHeight * 0.05,
                        decoration: BoxDecoration(
                          color: CommonColor.DISAGREE_BUTTON_COLOR,
                          border: Border.all(
                              width: 1, color: CommonColor.DISAGREE_BUTTON_COLOR), //Border.
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),

                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Center(child: Text("Disagree",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ),
                  ],)
              ],
            );
            //  title: Text("List item $index"));
          }),
    );
  }
}
