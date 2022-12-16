import 'package:flutter/material.dart';
import 'package:synise_project/common_file/size_config.dart';
class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
      body:Column(
        children: [
          Container(
            height: SizeConfig.screenHeight*0.1,
            color: Colors.red,

                child: mainAppBar(SizeConfig.screenHeight,SizeConfig.screenWidth)

            ),
          Container(
            color: Colors.green,
            height: SizeConfig.screenHeight*0.9,
            child: Column(
              children: [
             mainLayout(SizeConfig.screenHeight, SizeConfig.screenWidth)
                ],
            ),
          )
        ],
      ),

    );

  }

  Widget mainAppBar(double screenHeight, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          image: new AssetImage("assets/images/backarrow.png"),

        ),
        const Text("Registration"),
        Image(
          image: new AssetImage("assets/images/backarrow.png"),

        ),
      ],

    );
  }
  Widget mainLayout(double screenHeight, double screenWidth) {
    return Container(

    );
  }
}
