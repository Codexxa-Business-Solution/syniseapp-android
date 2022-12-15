import 'package:flutter/material.dart';



class CloseAuction extends StatefulWidget {
  const CloseAuction({Key? key}) : super(key: key);

  @override
  State<CloseAuction> createState() => _CloseAuctionState();
}

class _CloseAuctionState extends State<CloseAuction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Auction")),
      ),
    );
  }
}
