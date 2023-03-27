import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';

import '../../common_file/size_config.dart';

class EditAuctionProfile extends StatefulWidget {
  const EditAuctionProfile({Key? key}) : super(key: key);

  @override
  State<EditAuctionProfile> createState() => _EditAuctionProfileState();
}

class _EditAuctionProfileState extends State<EditAuctionProfile> {
  TextEditingController companyNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController addressOneController = TextEditingController();
  TextEditingController addressTwoController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController companyProfileController = TextEditingController();
  TextEditingController yourNameController = TextEditingController();
  TextEditingController gstController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController cstController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController panController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  final _companyFocus = FocusNode();
  final _emailAddressFocus = FocusNode();
  final _addressOneFocus = FocusNode();
  final _addressTwoFocus = FocusNode();
  final _cityFocus = FocusNode();
  final _zipCodeFocus = FocusNode();
  final _countryFocus = FocusNode();
  final _stateFocus = FocusNode();
  final _phoneFocus = FocusNode();
  final _mobileFocus = FocusNode();
  final _companyProfileFocus = FocusNode();
  final _yourNameFocus = FocusNode();
  final _gstFocus = FocusNode();
  final _cstFocus = FocusNode();
  final _vatFocus = FocusNode();
  final _panFocus = FocusNode();
  final _codeFocus = FocusNode();

  var countryItems = [
    'Country',
    'UK',
    'Brazil',
    'Africa',
    'China',
  ];

  var noOfEmployeeItems = [
    'No. of Employee',
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

  var designationItems = [
    'Consultant',
    'UK',
    'Brazil',
    'Africa',
    'China',
  ];
  bool isChecked = false;

  String countryValue = 'Country';
  String statesValue = 'State';
  String noOfEmployeeValue = 'No. of Employee';
  String designationValue = 'Consultant';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
            child: MainHeading(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
          Container(
            height: SizeConfig.screenHeight * 0.9,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
              children: [
                editMyProfile(SizeConfig.screenHeight, SizeConfig.screenWidth),
                updateText(SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget MainHeading(double parentHeight, double parentWidth) {
    return Container(
        height: parentHeight * 0.1,
        color: CommonColor.APP_BAR_COLOR,
        child: Padding(
          padding: EdgeInsets.only(top: parentHeight * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(left: parentWidth * 0.05),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: CommonColor.WHITE_COLOR,
                  ),
                ),
              ),
              Text(
                "Edit Profile",
                style: TextStyle(
                    color: CommonColor.WHITE_COLOR,
                    fontWeight: FontWeight.w500,
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
        ));
  }

  Widget editMyProfile(double parentHeight, double parentWidth) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _companyFocus,
                    controller: companyNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: RichText(
                          text: TextSpan(
                              text: 'Company Name',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              ),
                              children: [
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                        contentPadding: EdgeInsets.only(left: parentWidth*0.04),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
        Padding(
            padding: EdgeInsets.only(
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _emailAddressFocus,
                    controller: emailAddressController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: RichText(
                          text: TextSpan(
                              text: 'Email Address',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              ),
                              children: [
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
        Padding(
            padding: EdgeInsets.only(
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _addressOneFocus,
                    controller: addressOneController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: RichText(
                          text: TextSpan(
                              text: 'Address 1',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              ),
                              children: [
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
        Padding(
            padding: EdgeInsets.only(
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _addressTwoFocus,
                    controller: addressTwoController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Address 2',
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
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
                          label: RichText(
                            text: TextSpan(
                                text: 'City',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                ),
                                children: [
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION))),
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
                          labelText: 'Pin/Zip Code',
                          labelStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION))),
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
                    child: InputDecorator(
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION)),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: EdgeInsets.only(left: parentWidth * 0.0),
                          child: DropdownButton(
                            value: countryValue,
                            style: TextStyle(
                                color: countryValue == "Country"
                                    ? CommonColor.Hint_TEXT_COLOR
                                    : Colors.black),
                            icon: Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.screenWidth * 0.0),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/images/down_arrow.png"),
                                  ),
                                ],
                              ),
                            ),
                            items: countryItems.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                countryValue = newValue!;
                              });
                            },
                          ),
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
                    child: InputDecorator(
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          labelStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION)),
                      child: DropdownButtonHideUnderline(
                        child: Padding(
                          padding: EdgeInsets.only(left: parentWidth * 0.0),
                          child: DropdownButton(
                            value: statesValue,
                            style: TextStyle(
                                color: statesValue == "State"
                                    ? CommonColor.Hint_TEXT_COLOR
                                    : Colors.black),
                            icon: Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.screenWidth * 0.05),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/images/down_arrow.png"),
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
              ),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _phoneFocus,
                    controller: phoneController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
        Padding(
            padding: EdgeInsets.only(
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _mobileFocus,
                    controller: mobileController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        label: RichText(
                          text: TextSpan(
                              text: 'Mobile Number',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              ),
                              children: [
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
        Padding(
          padding: EdgeInsets.only(
              top: parentHeight * 0.03,
              left: parentWidth * 0.05,
              right: parentWidth * 0.05),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: parentHeight * 0.066,
                  child: InputDecorator(
                    decoration: InputDecoration(
                        labelText: 'No. of Employee',
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION)),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: EdgeInsets.only(left: parentWidth * 0.03),
                        child: DropdownButton(
                          value: noOfEmployeeValue,
                          style: TextStyle(
                              color: noOfEmployeeValue == "No. of Employee"
                                  ? CommonColor.Hint_TEXT_COLOR
                                  : Colors.black),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * 0.05),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      "assets/images/down_arrow.png"),
                                ),
                              ],
                            ),
                          ),
                          items: noOfEmployeeItems.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              noOfEmployeeValue = newValue!;
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
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _companyProfileFocus,
                    controller: companyProfileController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Company Profile',
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
        Padding(
            padding: EdgeInsets.only(
                left: parentWidth * 0.02, right: parentWidth * 0.02),
            child: Padding(
                padding: EdgeInsets.only(
                    top: parentHeight * 0.03,
                    left: parentWidth * 0.03,
                    right: parentWidth * 0.03),
                child: TextFormField(
                    focusNode: _yourNameFocus,
                    controller: yourNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        label: RichText(
                          text: TextSpan(
                              text: 'Your Name',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              ),
                              children: [
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION))))),
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
                  child: InputDecorator(
                    decoration: InputDecoration(
                        labelText: 'Designation',
                        labelStyle: const TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: 'Roboto-Bold',
                            fontWeight: FontWeight.w400),
                        contentPadding: const EdgeInsets.all(15),
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: CommonColor.BLACK_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1,
                                color: CommonColor.AGREE_BUTTON_COLOR),
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: TextStyle(
                            fontFamily: "Roboto_Regular",
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            color: CommonColor.GAME_DESTRUCTION)),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: EdgeInsets.only(left: parentWidth * 0.03),
                        child: DropdownButton(
                          value: designationValue,
                          style: TextStyle(
                              color: designationValue == "Consultant"
                                  ? CommonColor.Hint_TEXT_COLOR
                                  : Colors.black),
                          icon: Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.screenWidth * 0.05),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      "assets/images/down_arrow.png"),
                                ),
                              ],
                            ),
                          ),
                          items: designationItems.map((String items) {
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
                          label: RichText(
                            text: TextSpan(
                                text: 'GST',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                ),
                                children: [
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                          labelStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION))),
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
                          label: RichText(
                            text: TextSpan(
                                text: 'CST',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                ),
                                children: [
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                          labelStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION))),
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
                          label: RichText(
                            text: TextSpan(
                                text: 'VAT No.',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                ),
                                children: [
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                          labelStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION))),
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
                          labelText: 'PAN',
                          labelStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Roboto-Bold',
                              fontWeight: FontWeight.w400),
                          contentPadding: const EdgeInsets.all(15),
                          isDense: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: CommonColor.BLACK_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1,
                                  color: CommonColor.AGREE_BUTTON_COLOR),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintStyle: TextStyle(
                              fontFamily: "Roboto_Regular",
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              color: CommonColor.GAME_DESTRUCTION))),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget updateText(double parentHeight, double parentWidth) {
    return Padding(
        padding: EdgeInsets.only(
            top: SizeConfig.screenHeight * 0.03,
            left: SizeConfig.screenWidth * 0.12,
            right: SizeConfig.screenWidth * 0.12),
        child: GestureDetector(
            onDoubleTap: () {},
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: CommonColor.TENDER_BOX_TEXT,
                  borderRadius: BorderRadius.circular(7)),
              height: SizeConfig.screenHeight * 0.06,
              width: SizeConfig.screenWidth * 0.8,
              child: Center(
                  child: Text(
                    "Update",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto-Medium'),
                  )),
            )));
  }
}
