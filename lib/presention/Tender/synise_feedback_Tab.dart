import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/Tender/seller_Grievance_tab.dart';
import 'package:synise_project/presention/Tender/seller_product_tab.dart';
import 'package:synise_project/presention/Tender/synise_grievence_tab.dart';
import 'package:synise_project/presention/Tender/synise_tender_website_review_screen.dart';

class TenderFeedbackSyniseScreen extends StatefulWidget {
  const TenderFeedbackSyniseScreen({Key? key}) : super(key: key);

  @override
  State<TenderFeedbackSyniseScreen> createState() => _TenderFeedbackSyniseScreenState();
}

class _TenderFeedbackSyniseScreenState extends State<TenderFeedbackSyniseScreen>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;

  TextEditingController ComplaintDetails = TextEditingController();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(bottom: 20),
        children: [
          Container(
            // color: Colors.red,
            height: SizeConfig.screenHeight * 0.9,
            child: productAndGrievanceTabLayout(
                SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
        ],
      ),
    );
  }

  Widget productAndGrievanceTabLayout(double parentHeight, double parentWidth) {
    return Padding(
      padding: EdgeInsets.only(
          top: parentHeight * 0.03,
          right: parentWidth * 0.04,
          left: parentWidth * 0.04),
      child: Column(children: [
        // give the tab bar a height [can change hheight to preferred height]
        Container(
          height: parentHeight * 0.05,
          decoration: BoxDecoration(
            color: CommonColor.WHITE_COLOR,
            borderRadius: BorderRadius.circular(
              25.0,
            ),
            border: Border.all(color: CommonColor.BLACK_COLOR, width: 0.7),
          ),
          child: TabBar(
            controller: _tabController,
            // give the indicator a decoration (color and border radius)
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: CommonColor.APP_BAR_COLOR
              // gradient:  LinearGradient(
              //     begin: Alignment.centerLeft,
              //     end: Alignment.centerRight,
              //     colors: [CommonColor.LEFT_COLOR, CommonColor.RIGHT_COLOR]),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: const [
              // first tab [you can add an icon using the icon property]
              Tab(
                text: 'Website',
              ),

              // second tab [you can add an icon using the icon property]
              Tab(
                text: 'Grievance',
              ),
            ],
          ),
        ),
        // tab bar view here
        Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: parentHeight * 0.03),
              child: TabBarView(
                controller: _tabController,
                children: [
                  TenderWebsiteReview(
                    onNext: () {
                      _tabController.index = 1;
                    },
                  ),
                  TenderSyniseGrievanceScreen(
                    onNext: () {
                      _tabController.index = 2;
                    },
                  ),
                ],
              ),
            ))
      ]),
    );
  }
}
