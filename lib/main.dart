import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/login_registration/synise_supplier_registration.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/frame': (BuildContext context) => const SupplierRegistration(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    startTimer();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.screenBottom),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Column(children: [
              splashLogo(SizeConfig.screenHeight, SizeConfig.screenWidth),
             // text(SizeConfig.screenHeight, SizeConfig.screenWidth),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  Widget splashLogo (double parentHeight,double parentWidth ){
    return Padding(
    padding: EdgeInsets.only(top: parentHeight * 0.3, left: parentWidth * 0.3, right: parentWidth * 0.3),
    child: const Center(
    child:Image(image: AssetImage("assets/images/applogo.png"))),);

  }


  void navigateParentPage() {
    Navigator.of(context).pushReplacementNamed('/frame');
  }

  startTimer() {
    var durtaion = new Duration(seconds: 5);
    return Timer(durtaion, navigateParentPage);
  }


}
