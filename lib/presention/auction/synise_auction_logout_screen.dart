import 'package:flutter/material.dart';
import 'package:synise_project/presention/auction/synise_product_photos_screen.dart';




class LogoutScreen extends StatefulWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  State<LogoutScreen> createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPhotos()));
          },
            child: Text("Logout"))),
      ),
    );
  }
}
