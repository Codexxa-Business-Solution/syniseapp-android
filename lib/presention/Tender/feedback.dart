import 'package:flutter/material.dart';

class TenderFeedbackScreen extends StatefulWidget {
  const TenderFeedbackScreen({Key? key}) : super(key: key);

  @override
  State<TenderFeedbackScreen> createState() => _TenderFeedbackScreenState();
}

class _TenderFeedbackScreenState extends State<TenderFeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
