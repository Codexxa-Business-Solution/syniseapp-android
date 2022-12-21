import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

class TenderAgreementScreen extends StatefulWidget {
  const TenderAgreementScreen({Key? key}) : super(key: key);

  @override
  State<TenderAgreementScreen> createState() => _TenderAgreementScreenState();
}

class _TenderAgreementScreenState extends State<TenderAgreementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1),
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.screenWidth * 0.03,
              right: SizeConfig.screenWidth * 0.03,
              top: SizeConfig.screenHeight * 0.02,
              bottom: SizeConfig.screenHeight * 0.02,
            ),
            child: const Text(
              'We hereby declare that We have read examined and understood the tender document pertaining to this tender notice and have no reservations to the same. We offer to execute the works in conformity with the tender terms & conditions Our bid shall be valid for a period as mentioned in the tender document and it shall remain binding upon us.• Application time being displaced on e-procurement website page shall be treated final. No dispute what so ever in this regard shall be entertained.I agree that your management has rights to accepts/rejects/ cancel the tender in whole or in part without assigning any reasonthereto.In event of non compliance to the bid/commitment made through this tender, Seller (Vedanta Ltd.) on their discretion reserves the right to take penal action against the bidder such as barring from participation in future in tender/auctions, blacklisting at Group level etcWe also confirm our acceptance that if any dispute arises it will be treated as matter between Seller and bidder and being a tenderer Synise will have no roll and responsibility and Synise will be legally free from any indemnity arises out of it. I accept the Terms and Conditions & acknowledge the Privacy Policy',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Robot_Regular'),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: SizeConfig.screenHeight * 0.02),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.27,
                    height: SizeConfig.screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: CommonColor.AGREE_BUTTON_COLOR,
                      border: Border.all(
                          width: 1, color: CommonColor.AGREE_BUTTON_COLOR),
                      //Border.
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Center(
                          child: Text(
                        "Agree",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeHorizontal*3.5,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto_Regular'
                        ),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: SizeConfig.screenHeight * 0.02),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.27,
                    height: SizeConfig.screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: CommonColor.DISAGREE_BUTTON_COLOR,
                      border: Border.all(
                          width: 1, color: CommonColor.DISAGREE_BUTTON_COLOR),
                      //Border.
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Center(
                          child: Text(
                        "Disagree",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto_Regular'
                            ),
                      )),
                    ),
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
