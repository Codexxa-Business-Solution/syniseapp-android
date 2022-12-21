import 'package:flutter/material.dart';


class DemoTruckAuction extends StatefulWidget {
  const DemoTruckAuction({Key? key}) : super(key: key);

  @override
  State<DemoTruckAuction> createState() => _DemoTruckAuctionState();
}

class _DemoTruckAuctionState extends State<DemoTruckAuction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Truck")
        ],
      ),
    );
  }
}
