import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

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

  final _companyFocus = FocusNode();
  final _emailFocus = FocusNode();
  final _addressOneFocus = FocusNode();
  final _addressTwoFocus = FocusNode();
  final _cityFocus = FocusNode();
  final _zipCodeFocus = FocusNode();

  String countryValue = "";
  String stateValue = "";
  String cityValue = "";

  var items = [
    'India',
    'UK',
    'Brazil',
    'Africa',
    'China',
  ];

  String dropdownvalue = 'India';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          getHeadingName(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              registerAsLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
              getAddAllRegisterField(
                  SizeConfig.screenHeight, SizeConfig.screenWidth),
            ],
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
                spreadRadius: 5,
                blurRadius: 7,
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
                      child: DropdownButton(
                        hint: Text("Country",style: TextStyle(
                          color: CommonColor.Hint_TEXT_COLOR,
                        ),),
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
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
      ],
    );
  }
}
