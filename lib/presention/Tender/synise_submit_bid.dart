import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
class SubmitBid extends StatefulWidget {
  const SubmitBid({Key? key}) : super(key: key);

  @override
  State<SubmitBid> createState() => _SubmitBidState();
}

class _SubmitBidState extends State<SubmitBid> {
  TextEditingController CommodityController = TextEditingController();
  TextEditingController addressOneController = TextEditingController();
  TextEditingController UomController = TextEditingController();
  TextEditingController LotRequiredController = TextEditingController();
  TextEditingController bidQuailtyController = TextEditingController();
  TextEditingController podController = TextEditingController();
  TextEditingController pricingController = TextEditingController();
  TextEditingController previousBidController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController expectationController = TextEditingController();


  final _companyFocus = FocusNode();
  final _uomFocus = FocusNode();
  final _LotRequiredFocus = FocusNode();
  final _bidQuailtyFocus = FocusNode();
  final _podFocus = FocusNode();
  final _pricingFocus = FocusNode();
  final _previousBidFocus = FocusNode();
  final _priceFocus = FocusNode();
  final _expectationFocus = FocusNode();

  bool isChecked = false;

  var items = [
    'Payment Terms',
    'UK',
    'Brazil',
    'Africa',
    'China',
  ];

  var stateItems = [
    'Delivery Terms',
    'Maharashtra',
    'Gujarat',
    'karnataka',
    'Goa',
  ];

  var employeeCount = [
    'Material Type',
    '20',
    '30',
    '40',
    '50',
  ];

  var designationItem = [
    'Sub Material',
    'Developer',
    'Tester',
    'Designer',
  ];
  var subMaterialItem = [
    'Designation',
    'Developer',
    'Tester',
    'Designer',
  ];
  String dropdownvalue = 'Payment Terms';
  String statesValue = 'Delivery Terms';
  String employeeValue = 'Material Type';
  String subMaterial = 'Sub Material';
  String designationValue = 'Sub Material';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.1,
            child:
            getHeadingName(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
          Container(
            height: SizeConfig.screenHeight * 0.9,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
              children: [
                demoTender(
                    SizeConfig.screenHeight, SizeConfig.screenWidth),
                getAddAllRegisterField(
                    SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget getHeadingName(double parentHeight, double parentWidth) {
    return Container(
      height: parentHeight * 0.1,
      color: CommonColor.APP_BAR_COLOR,
      child: Padding(
        padding: EdgeInsets.only(top: parentHeight * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.only(left: parentWidth * 0.05),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: CommonColor.WHITE_COLOR,
                ),
              ),
            ),
          /*  Text(
              "Registration",
              style: TextStyle(
                  color: CommonColor.WHITE_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                  fontFamily: 'Roboto_Medium'),
            ),*/
            Padding(
              padding: EdgeInsets.only(right: parentWidth * 0.05),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget demoTender (double parentHeight,double parentWidth){
    return Padding(
      padding:  EdgeInsets.only(top: parentHeight*0.03,left: parentWidth*0.03,right: parentWidth*0.03),
      child: Container(
        height: SizeConfig.screenHeight * 0.08,
        width: SizeConfig.screenWidth*0.94,
        decoration: BoxDecoration(
          color: CommonColor.REGISTER_AS_COLOR,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.01,left: parentWidth*0.03),
                  child: Text("Demo Tender",style: TextStyle( color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto_Regular'),),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: parentHeight*0.02,top: parentHeight*0.01),
                  child: Row(
                    children: [

                      Text("Tender Id :",style: TextStyle( color: Colors.black,
                          fontSize: SizeConfig.blockSizeHorizontal*3.5,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto_Regular'),),
                      Text(" DEMO10220002")
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding:  EdgeInsets.only(right: parentWidth*0.7,top: parentHeight*0.01),
              child: Text("Description",style: TextStyle( color: Colors.black,
                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto_Regular'),),
            )
          ],
        ),


      ),
    );
  }

  Widget getAddAllRegisterField(double parentHeight, double parentWidth) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: CommodityController,
            focusNode: _companyFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Commodity",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: parentHeight * 0.066,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black38, width: 1.0)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.03),
                      child: DropdownButton(
                        value: employeeValue,
                        style: TextStyle(
                            color: employeeValue == "Material Type"
                                ? CommonColor.Hint_TEXT_COLOR
                                : Colors.black),
                        icon: Padding(
                          padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/down_arrow.png"),
                              ),
                            ],
                          ),
                        ),
                        items: employeeCount.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            employeeValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: parentHeight * 0.066,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black38, width: 1.0)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.03),
                      child: DropdownButton(
                        value: designationValue,
                        style: TextStyle(
                            color: designationValue == "Sub Material"
                                ? CommonColor.Hint_TEXT_COLOR
                                : Colors.black),
                        icon: Padding(
                          padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/down_arrow.png"),
                              ),
                            ],
                          ),
                        ),
                        items: designationItem.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            designationValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: UomController,
            focusNode: _uomFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "UOM",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: LotRequiredController,
            focusNode: _LotRequiredFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Lot Required",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: bidQuailtyController,
            focusNode: _bidQuailtyFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Bid Quality",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: parentHeight * 0.066,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black38, width: 1.0)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.03),
                      child: DropdownButton(
                        value: statesValue,
                        style: TextStyle(
                            color: statesValue == "Delivery Terms"
                                ? CommonColor.Hint_TEXT_COLOR
                                : Colors.black),
                        icon: Padding(
                          padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/down_arrow.png"),
                              ),
                            ],
                          ),
                        ),
                        items: stateItems.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                          statesValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: parentHeight * 0.066,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black38, width: 1.0)),
                  child: DropdownButtonHideUnderline(
                    child: Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.03),
                      child: DropdownButton(
                        value: dropdownvalue,
                        style: TextStyle(
                            color: dropdownvalue == "Payment Terms"
                                ? CommonColor.Hint_TEXT_COLOR
                                : Colors.black),
                        icon: Padding(
                          padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.05),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("assets/images/down_arrow.png"),
                              ),
                            ],
                          ),
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: podController,
            focusNode: _podFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "POD ( Port on Delivery )",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: pricingController,
            focusNode: _pricingFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Pricing in",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: previousBidController,
            focusNode: _previousBidFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Previous Bid Price",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: priceController,
            focusNode: _priceFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Price",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.02,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: TextFormField(
            controller: expectationController,
            focusNode: _expectationFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Expectation in Quality/ Delivery/ Payment",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black)),
            ),
          ),
        ),


        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.05,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: GestureDetector(
            onDoubleTap: (){},
            onTap: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>AuctionDrawerScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: CommonColor.APP_BAR_COLOR,
                  borderRadius: BorderRadius.circular(10)),
              height: parentHeight * 0.06,
              width: parentWidth * 0.8,
              child: Center(child: Text("Submit Bid",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto-Medium'
                ),)),
            ),
          ),
        ),
      ],
    );
  }
}
