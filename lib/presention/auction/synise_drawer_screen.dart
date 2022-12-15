import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Padding(
        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.05),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
          ),
          child: Container(
              height: SizeConfig.screenHeight*0.95 ,
            width: SizeConfig.screenWidth*0.7,
            decoration: BoxDecoration(),
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
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/images/applogo.png"),
                      height: SizeConfig.screenHeight*0.1,
                    ),
                  ],
                )),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                _pageChange(0);
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Home'),
              onTap: () {
                _pageChange(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Profile'),
              onTap: () {
                _pageChange(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Change Password'),
              onTap: () {
                _pageChange(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('View Closed Auction'),
              onTap: () {
                _pageChange(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Logout'),
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
        _widget = const HomeScreen();
        _actions = [];
        break;
      case 1:
        _widget = const MyProfileScreen();
        _actions = [];
        break;
      case 2:
        _widget = const ChangePassword();
        _actions = [];
        break;
      case 3:
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
