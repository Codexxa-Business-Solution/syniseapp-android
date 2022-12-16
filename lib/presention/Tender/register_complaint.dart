import 'package:flutter/material.dart';

class TenderRegisterComplaintScreen extends StatefulWidget {
  const TenderRegisterComplaintScreen({Key? key}) : super(key: key);

  @override
  State<TenderRegisterComplaintScreen> createState() => _TenderRegisterComplaintScreenState();
}

class _TenderRegisterComplaintScreenState extends State<TenderRegisterComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
