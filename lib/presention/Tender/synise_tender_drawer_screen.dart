import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/Tender/synise_faq_screen.dart';
import 'package:synise_project/presention/Tender/synise_feedback_screen.dart';
import 'package:synise_project/presention/Tender/synise_tender_bid_history.dart';
import 'package:synise_project/presention/Tender/synise_view_submit_tenders_screen.dart';
import 'package:synise_project/presention/Tender/synise_agreement_screen.dart';
import 'package:synise_project/presention/Tender/synise_tender_change_password_screen.dart';
import 'package:synise_project/presention/Tender/synise_feedback_Tender_screen.dart';
import 'package:synise_project/presention/Tender/synise_tender_home_screen.dart';
import 'package:synise_project/presention/Tender/synise_tender_logout_screen.dart';
import 'package:synise_project/presention/Tender/synise_tender_my_profile_screen.dart';
import 'package:synise_project/presention/Tender/synise_register_complain_screen.dart';


class TenderDrawerScreen extends StatefulWidget {
  const TenderDrawerScreen({Key? key}) : super(key: key);

  @override
  State<TenderDrawerScreen> createState() => _TenderDrawerScreen();
}

class _TenderDrawerScreen extends State<TenderDrawerScreen> {
  String? _title;
  Widget? _widget;
  List<Widget>? _actions;


  @override
  void initState() {
    super.initState();

    _pageChange(0);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CommonColor.TENDER_BOX_TEXT,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.05),
              child: Text(_title.toString()),
            ),
            const Text(
              "data",
              style: TextStyle(color: Colors.transparent),
            )
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.0),
              child: IconButton(
                icon: Image.asset(
                  "assets/images/drawer_icon.png",
                  height: SizeConfig.screenHeight * 16,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip:
                MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );

          },
        ),
      ),
      drawer: Padding(
        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.05),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
          ),
          child: Container(
              height: SizeConfig.screenHeight*0.98 ,
              width: SizeConfig.screenWidth*0.7,
              decoration: const BoxDecoration(),
              child: _drawer()
          ),
        ),
      ),
      body: _widget,
    );
  }

  Drawer _drawer() {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
                title: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                    child: const Image(
                      image: AssetImage("assets/images/applogo.png"),
                    ),
                  ),
                )
            ),

            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
              child: ListTile(
                title: Text('Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: 'Roboto_Medium'
                  ),),
                onTap: () {
                  _pageChange(0);
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: Text('My Profile',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('View & Submit Tenders',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Bid History',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Change Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(4);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Register Complaint',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(5);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Feedback of Tender',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Feedback of Synise',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(6);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Agreement',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(7);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('FAQ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(8);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium'
                ),),
              onTap: () {
                _pageChange(9);
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
    );
  }

  _pageChange(int page) {
    switch (page) {
      case 0:
        _title = '';
        _widget = const TenderHomeScreen();
        _actions = [];
        break;
      case 1:
        _title = 'My Profile';
        _widget = const TenderMyProfileScreen();
        _actions = [];
        break;
      case 2:
        _title = '';
        _widget = const ViewSubmitTenderHomeScreen();
        _actions = [];
        break;
      case 3:
        _title = 'Bid History';
        _widget = const TenderBidHistoryScreen();
        _actions = [];
        break;
      case 4:
        _title = 'Change Password';
        _widget = const TenderChangePassword();
        _actions = [];
        break;
      case 5:
        _title = 'Complaint Register';
        _widget = const TenderRegisterComplaintScreen();
        _actions = [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ];
        break;
      case 6:
        _title = 'Feedback of Tender';
        _widget = const TenderFeedbackScreen();
        _actions = [];
        break;
      case 7:
        _title = 'Feedback of Synise';
        _widget = const SyniseFeedbackScreen();
        _actions = [];
        break;
      case 8:
        _title = 'Agreement';
        _widget = const TenderAgreementScreen();
        _actions = [];
        break;
      case 9:
     _title = 'FAQ';
        _widget = const TenderFAQScreen();
        _actions = [];
        break;
      case 10:
        _widget = const TenderLogoutScreen();
        _actions = [];
        break;
    }

    setState(() {});
  }
}
