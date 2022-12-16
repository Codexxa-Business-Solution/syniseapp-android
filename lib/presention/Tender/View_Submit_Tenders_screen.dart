import 'package:flutter/material.dart';

class ViewSubmitTenderHomeScreen extends StatefulWidget {
  const ViewSubmitTenderHomeScreen({Key? key}) : super(key: key);

  @override
  State<ViewSubmitTenderHomeScreen> createState() => _ViewSubmitTenderHomeScreenState();
}

class _ViewSubmitTenderHomeScreenState extends State<ViewSubmitTenderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
