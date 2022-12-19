import 'package:flutter/material.dart';

class TenderChangePasswordScreen extends StatefulWidget {
  const TenderChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<TenderChangePasswordScreen> createState() => _TenderViewBidScreenState();
}

class _TenderViewBidScreenState extends State<TenderChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
