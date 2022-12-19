import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';

class TenderRegisterComplaintScreen extends StatefulWidget {
  const TenderRegisterComplaintScreen({Key? key}) : super(key: key);

  @override
  State<TenderRegisterComplaintScreen> createState() =>
      _TenderRegisterComplaintScreenState();
}

class _TenderRegisterComplaintScreenState
    extends State<TenderRegisterComplaintScreen> {

  TextEditingController ComplaintDetails = TextEditingController();
  final _ComplaintDetails = FocusNode();

  var ComplaintType = [
    'Complaint Type',
    '20',
    '30',
    '40',
    '50',
  ];
  String employeeValue = 'Complaint Type';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
      children: [
        complaintTypeText(SizeConfig.screenHeight, SizeConfig.screenWidth),
        submitButton(SizeConfig.screenHeight, SizeConfig.screenWidth)
      ],
    )));
  }

  Widget complaintTypeText(double parentHeight, double parentWidth) {
    return Column(
      children: [
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
                            color: employeeValue == "Complaint Type"
                                ? CommonColor.Hint_TEXT_COLOR
                                : Colors.black38),
                        icon: Padding(
                          padding: EdgeInsets.only(
                              right: SizeConfig.screenWidth * 0.05),
                          child: Row(
                            children: const [
                              Image(
                                image:
                                    AssetImage("assets/images/down_arrow.png"),
                                color: CommonColor.APP_BAR_COLOR,
                              ),
                            ],
                          ),
                        ),
                        items: ComplaintType.map((String items) {
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
            controller: ComplaintDetails,
            focusNode: _ComplaintDetails,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: "Complaint Details",
              hintStyle: TextStyle(
                  color: CommonColor.Hint_TEXT_COLOR,
                  fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                  fontFamily: 'Roboto_Regular'),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black38)),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(width: 1.0, color: Colors.black38)),
            ),maxLines: 5,
          ),
        ),
      ],
    );
  }
  Widget submitButton(double parentHeight,double parentWidth){
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        height: parentHeight*0.07,
        width: parentWidth*0.6,
        decoration: BoxDecoration(
          color: CommonColor.TENDER_BOX_TEXT,
            borderRadius: BorderRadius.circular(7),
        ),
        child: Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontFamily: 'Roboto-Bold',fontSize: 15),))
      ),
    );
  }
}
