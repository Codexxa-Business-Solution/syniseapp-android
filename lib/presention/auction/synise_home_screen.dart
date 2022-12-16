import 'package:flutter/material.dart';
import 'package:synise_project/common_file/size_config.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
      ),
    );
  }

  // Widget getAuctionDropDown(double parentHeight, double prentWidth){
  //   return DropdownButtonFormField(items: "items", onChanged: onChanged)
  // }

}
