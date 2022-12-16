import 'package:flutter/material.dart';

class TenderHomeScreen extends StatefulWidget {
  const TenderHomeScreen({Key? key}) : super(key: key);

  @override
  State<TenderHomeScreen> createState() => _TenderHomeScreenState();
}

class _TenderHomeScreenState extends State<TenderHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
      ),
    );
  }
}
