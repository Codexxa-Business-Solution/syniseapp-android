import 'package:flutter/material.dart';

class TenderMyProfileScreen extends StatefulWidget {
  const TenderMyProfileScreen({Key? key}) : super(key: key);

  @override
  State<TenderMyProfileScreen> createState() => _TenderHomeScreenState();
}

class _TenderHomeScreenState extends State<TenderMyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
