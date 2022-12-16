import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/auction/synise_change_password_screen.dart';
import 'package:synise_project/presention/auction/synise_close_auction_screen.dart';
import 'package:synise_project/presention/auction/synise_home_screen.dart';
import 'package:synise_project/presention/auction/synise_logout_screen.dart';
import 'package:synise_project/presention/auction/synise_my_profile_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreen();
}

class _DrawerScreen extends State<DrawerScreen> {
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
        backgroundColor: CommonColor.APP_BAR_COLOR,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.05),
              child: Text(_title.toString()),
            ),
            Text(
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
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            );
          },
        ),
      ),
      drawer: Padding(
        padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
          ),
          child: Container(
              height: SizeConfig.screenHeight * 0.95,
              width: SizeConfig.screenWidth * 0.7,
              decoration: BoxDecoration(),
              child: _drawer()),
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
                padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.03),
                child: Image(
                  image: AssetImage("assets/images/applogo.png"),
                ),
              ),
            )),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.03),
              child: ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                      fontFamily: 'Roboto_Medium'),
                ),
                onTap: () {
                  _pageChange(0);
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: Text(
                'My Profile',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                    fontFamily: 'Roboto_Medium'),
              ),
              onTap: () {
                _pageChange(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Change Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                    fontFamily: 'Roboto_Medium'),
              ),
              onTap: () {
                _pageChange(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'View Closed Auction',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                    fontFamily: 'Roboto_Medium'),
              ),
              onTap: () {
                _pageChange(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                    fontFamily: 'Roboto_Medium'),
              ),
              onTap: () {
                _pageChange(4);
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
        _widget = const HomeScreen();
        _actions = [];
        break;
      case 1:
        _title = 'My Profile';
        _widget = const MyProfileScreen();
        _actions = [];
        break;
      case 2:
        _title = 'Change Password';
        _widget = const ChangePassword();
        _actions = [];
        break;
      case 3:
        _title = 'Closed Auction';
        _widget = const CloseAuction();
        _actions = [];
        break;
      case 4:
        _widget = const LogoutScreen();
        _actions = [];
        break;
    }

    setState(() {});
  }
}
