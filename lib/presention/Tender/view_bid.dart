import 'package:flutter/material.dart';

class TenderViewBidScreen extends StatefulWidget {
  const TenderViewBidScreen({Key? key}) : super(key: key);

  @override
  State<TenderViewBidScreen> createState() => _TenderViewBidScreenState();
}

class _TenderViewBidScreenState extends State<TenderViewBidScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
