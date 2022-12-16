import 'package:flutter/material.dart';

class TenderAgreementScreen extends StatefulWidget {
  const TenderAgreementScreen({Key? key}) : super(key: key);

  @override
  State<TenderAgreementScreen> createState() => _TenderAgreementScreenState();
}

class _TenderAgreementScreenState extends State<TenderAgreementScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
    );
  }
}
