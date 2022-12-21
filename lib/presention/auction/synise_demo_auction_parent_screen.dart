import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/auction/synise_demo_car_auction_screen.dart';
import 'package:synise_project/presention/auction/synise_demo_cycle_auction_screen.dart';
import 'package:synise_project/presention/auction/synise_demo_truck_auction_screen.dart';

class DemoAuctionParentScreen extends StatefulWidget {
  const DemoAuctionParentScreen({Key? key}) : super(key: key);

  @override
  State<DemoAuctionParentScreen> createState() =>
      _DemoAuctionParentScreenState();
}

class _DemoAuctionParentScreenState extends State<DemoAuctionParentScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(SizeConfig.screenHeight * 0.13),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight*0.16,
                  child: AppBar(
                    backgroundColor: CommonColor.APP_BAR_COLOR,
                    centerTitle: true,
                    leading: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.03,
                          top: SizeConfig.screenHeight * 0.01),
                      child: GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                            color: Colors.transparent,
                            child: const Icon(Icons.arrow_back_ios)),
                      ),
                    ),
                    title: Padding(
                      padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.01),
                      child: Text(
                        'Demo Auction 1',
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto_Regular'),
                      ),
                    ),
                    bottom: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: CommonColor.UNSELECTED_TAB_COLOR,
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(
                            child: Text(
                              'Demo 165/Car',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Demo 165/Truck',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Demo 165/Cycle',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Demo 165/Bus',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Demo 165/Taxi',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Demo 165/Auto',
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto_Regular'),
                            ),
                          ),
                        ]),
                    actions: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            right: SizeConfig.screenWidth * 0.03,
                            top: SizeConfig.screenHeight * 0.01),
                        child: Padding(
                          padding:
                              EdgeInsets.only(right: SizeConfig.screenWidth * 0.03),
                          child: const Icon(
                            Icons.add_alert,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: CommonColor.APP_BAR_COLOR,
                  height: SizeConfig.screenHeight*0.007,
                ),
              ],
            ),
          ),
          body: Container(
            color: Colors.red,
            height: SizeConfig.screenHeight*0.9,
            child: const TabBarView(
              children: <Widget>[
                DemoCarAuction(),
                DemoTruckAuction(),
                DemoCycleAuction(),
                Center(
                  child: Text('Tab 4'),
                ),
                Center(
                  child: Text('Tab 5'),
                ),
                Center(
                  child: Text('Tab 6'),
                ),
              ],
            ),
          )),
    );
  }
}
