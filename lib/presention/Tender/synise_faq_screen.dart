import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

const _labelStyle = TextStyle(fontWeight: FontWeight.w600);

class TenderFAQScreen extends StatefulWidget {
  const TenderFAQScreen({Key? key}) : super(key: key);

  @override
  State<TenderFAQScreen> createState() => _TenderFAQScreenState();
}

class _TenderFAQScreenState extends State<TenderFAQScreen> {
  bool listBox = false;
  bool faqList = false;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      height: SizeConfig.screenHeight * 0.9,
      child: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.07),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Visibility(
                        visible: listBox,
                        child: GestureDetector(
                          onDoubleTap: () {},
                          onTap: () {
                            if (mounted) {
                              setState(() {
                                listBox = !listBox;
                                faqList = !faqList;

                                print("close");
                              });
                            }
                          },
                          child: Container(
                            height: SizeConfig.screenHeight * 0.066,
                            width: SizeConfig.screenWidth * 0.94,
                            decoration: const BoxDecoration(
                              color: CommonColor.REGISTER_AS_COLOR,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  topRight: Radius.circular(13)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.05),
                                  child: Text(
                                    "What is e -Tender ?",
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal *
                                                4.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: SizeConfig.screenWidth * 0.05),
                                  child: Row(
                                    children: const [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/up_arrow.png"),
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
                        visible: !listBox,
                        child: GestureDetector(
                          onDoubleTap: () {},
                          onTap: () {
                            if (mounted) {
                              setState(() {
                                listBox = !listBox;
                                faqList = !faqList;
                                print("open");
                              });
                            }
                          },
                          child: Container(
                            height: SizeConfig.screenHeight * 0.066,
                            width: SizeConfig.screenWidth * 0.94,
                            decoration: BoxDecoration(
                              color: CommonColor.REGISTER_AS_COLOR,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.05),
                                  child: Text(
                                    "What is e -Tender ?",
                                    style: TextStyle(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal *
                                                4.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Regular'),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: SizeConfig.screenWidth * 0.05),
                                  child: Row(
                                    children: const [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/down_arrow.png"),
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth * 0.03,
                        right: SizeConfig.screenWidth * 0.03),
                    child: Visibility(
                      visible: faqList,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            )
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.03,
                                  right: SizeConfig.screenWidth * 0.03,
                                  top: SizeConfig.screenHeight * 0.02,
                                  bottom: SizeConfig.screenHeight * 0.02,
                                ),
                                child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.0,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Robot_Regular'),
                                  textAlign: TextAlign.justify,
                                ),
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
          }),
    ));
  }
}
