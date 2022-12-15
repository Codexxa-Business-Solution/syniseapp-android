import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synise_project/common_file/size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

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
        ],
      ),
    );
  }

  Widget SyniseText(double parentHeight, double parentWidth) {
    return Container(
        color: Colors.red,
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

  Widget Login(double parentHeight, double parentWidth) {
    return Container();
  }
}
