import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
import 'package:synise_project/presention/auction/synise_auction_drawer_screen.dart';

class SupplierRegistration extends StatefulWidget {
  const SupplierRegistration({Key? key}) : super(key: key);

  @override
  State<SupplierRegistration> createState() => _SupplierRegistrationState();
}

class _SupplierRegistrationState extends State<SupplierRegistration> {



  TextEditingController companyNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressOneController = TextEditingController();
  TextEditingController addressTwoController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController profileController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController gstController = TextEditingController();
  TextEditingController cstController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController panController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  final _companyFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _addressOneFocus = FocusNode();
  final _addressTwoFocus = FocusNode();
  final _cityFocus = FocusNode();
  final _zipCodeFocus = FocusNode();
  final _phoneFocus = FocusNode();
  final _profileFocus = FocusNode();
  final _nameFocus = FocusNode();
  final _gstFocus = FocusNode();
  final _cstFocus = FocusNode();
  final _vatFocus = FocusNode();
  final _panFocus = FocusNode();
  final _codeFocus = FocusNode();

  bool isChecked = false;

  var items = [
    'Country',
    'UK',
    'Brazil',
    'Africa',
    'China',
  ];

  var stateItems = [
    'State',
    'Maharashtra',
    'Gujarat',
    'karnataka',
    'Goa',
  ];

  var employeeCount = [
    'No. of Employee',
    '20',
    '30',
    '40',
    '50',
  ];

  var designationItem = [
    'Designation',
    'Developer',
    'Tester',
    'Designer',
  ];

  String dropdownvalue = 'Country';
  String statesValue = 'State';
  String employeeValue = 'No. of Employee';
  String designationValue = 'Designation';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onDoubleTap: (){},
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        body: ListView(
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
                  registerAsLayout(
                      SizeConfig.screenHeight, SizeConfig.screenWidth),
                  getAddAllRegisterField(
                      SizeConfig.screenHeight, SizeConfig.screenWidth),
                ],
              ),
            ),
          ],
        ),
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
            Padding(
              padding: EdgeInsets.only(left: parentWidth * 0.05),
              child: Icon(
                Icons.arrow_back_ios,
                color: CommonColor.WHITE_COLOR,
              ),
            ),
            Text(
              "Registration",
              style: TextStyle(
                  color: CommonColor.WHITE_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                  fontFamily: 'Roboto_Medium'),
            ),
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

  Widget registerAsLayout(double parentHeight, double parentWidth) {
    return Padding(
      padding: EdgeInsets.only(
          top: parentHeight * 0.02,
          left: parentWidth * 0.05,
          right: parentWidth * 0.05),
      child: Container(
        height: parentHeight * 0.07,
        decoration: BoxDecoration(
            color: CommonColor.REGISTER_AS_COLOR,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 2),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: parentWidth * 0.05),
              child: Text(
                "Register As : Supplier",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                    fontFamily: 'Roboto_Regular',
                    fontWeight: FontWeight.w400),
              ),
            ),
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
            controller: companyNameController,
            focusNode: _companyFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Company Name",
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
            controller: emailController,
            focusNode: _emailFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Email Address",
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
            controller: addressOneController,
            focusNode: _addressOneFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Address 1",
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
            controller: addressTwoController,
            focusNode: _addressTwoFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Address 2",
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
                child: Padding(
                  padding: EdgeInsets.only(right: parentWidth * 0.05),
                  child: TextFormField(
                    controller: cityController,
                    focusNode: _cityFocus,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "City",
                      hintStyle: TextStyle(
                          color: CommonColor.Hint_TEXT_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_Regular'),
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: parentWidth * 0.05),
                  child: TextFormField(
                    controller: zipCodeController,
                    focusNode: _zipCodeFocus,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Pin/Zip Code",
                      hintStyle: TextStyle(
                          color: CommonColor.Hint_TEXT_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_Regular'),
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
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
                child: Padding(
                  padding: EdgeInsets.only(right: parentWidth * 0.05),
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
                              color: dropdownvalue == "Country"
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
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: parentWidth * 0.05),
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
                              color: statesValue == "State"
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
            controller: phoneController,
            focusNode: _phoneFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Phone Number",
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
                            color: employeeValue == "No. of Employee"
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
          child: TextFormField(
            controller: profileController,
            focusNode: _profileFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Company Profile",
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
              top: parentHeight * 0.01,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: Row(
            children: [
              Text(
                "(A brief description on the major activities of your organisation)",
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                    color: CommonColor.Hint_TEXT_COLOR),
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
            controller: nameController,
            focusNode: _nameFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Your Name",
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
                        value: designationValue,
                        style: TextStyle(
                            color: designationValue == "Designation"
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
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: parentWidth * 0.05),
                  child: TextFormField(
                    controller: gstController,
                    focusNode: _gstFocus,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "GST",
                      hintStyle: TextStyle(
                          color: CommonColor.Hint_TEXT_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_Regular'),
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: parentWidth * 0.05),
                  child: TextFormField(
                    controller: cstController,
                    focusNode: _cstFocus,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "CST",
                      hintStyle: TextStyle(
                          color: CommonColor.Hint_TEXT_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_Regular'),
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
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
                child: Padding(
                  padding: EdgeInsets.only(right: parentWidth * 0.05),
                  child: TextFormField(
                    controller: vatController,
                    focusNode: _vatFocus,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "VAT No.",
                      hintStyle: TextStyle(
                          color: CommonColor.Hint_TEXT_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_Regular'),
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: parentWidth * 0.05),
                  child: TextFormField(
                    controller: panController,
                    focusNode: _panFocus,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "PAN",
                      hintStyle: TextStyle(
                          color: CommonColor.Hint_TEXT_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontFamily: 'Roboto_Regular'),
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1.0, color: Colors.black)),
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
            controller: codeController,
            focusNode: _codeFocus,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "Enter Below Code",
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
              Container(
                height: parentHeight * 0.06,
                width: parentWidth * 0.35,
                decoration: BoxDecoration(
                    color: CommonColor.CAPTCHA_CODE_COLOR,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: Text(
                    "d4847",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal * 5.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto_Medium'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.03,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: Row(
            children: [
              Stack(
                children: [
                  Visibility(
                    visible: !isChecked,
                    child: GestureDetector(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        }
                      },
                      child: Container(
                        height: parentHeight * 0.027,
                        width: parentWidth * 0.059,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: const Text(
                          "Hiii",
                          style: TextStyle(color: Colors.transparent),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isChecked,
                    child: GestureDetector(
                      onTap: () {
                        if (mounted) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        }
                      },
                      child: Container(
                        height: parentHeight * 0.027,
                        width: parentWidth * 0.059,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Center(
                            child: Icon(
                          Icons.check,
                          size: parentHeight * 0.02,
                          color: CommonColor.APP_BAR_COLOR,
                        )),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth * 0.03),
                    child: Text(
                      "I have read and agree to Synise",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto_Regular',
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth * 0.01),
                        child: Text(
                          "Agreement",
                          style: TextStyle(
                              color: CommonColor.APP_BAR_COLOR,
                              fontFamily: 'Roboto_Medium',
                              fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AuctionDrawerScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: CommonColor.APP_BAR_COLOR,
                  borderRadius: BorderRadius.circular(10)),
              height: parentHeight * 0.06,
              width: parentWidth * 0.8,
              child: Center(child: Text("Register",
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
