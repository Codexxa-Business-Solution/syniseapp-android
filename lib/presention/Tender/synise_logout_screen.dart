import 'package:flutter/material.dart';

class TenderLogoutScreen extends StatefulWidget {
  const TenderLogoutScreen({Key? key}) : super(key: key);

  @override
  State<TenderLogoutScreen> createState() => _TenderLogoutScreenState();
}

class _TenderLogoutScreenState extends State<TenderLogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
