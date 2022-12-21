import 'package:flutter/material.dart';




class DemoCycleAuction extends StatefulWidget {
  const DemoCycleAuction({Key? key}) : super(key: key);

  @override
  State<DemoCycleAuction> createState() => _DemoCycleAuctionState();
}

class _DemoCycleAuctionState extends State<DemoCycleAuction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Cycle")
        ],
      ),
    );
  }
}
