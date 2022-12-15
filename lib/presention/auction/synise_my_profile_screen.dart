import 'package:flutter/material.dart';



class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreen();
}

class _MyProfileScreen extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Profile")),
      ),
    );
  }
}
