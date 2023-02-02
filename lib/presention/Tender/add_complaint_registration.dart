import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';
class AddComplaintRegistration extends StatefulWidget {
  const AddComplaintRegistration({Key? key}) : super(key: key);

  @override
  State<AddComplaintRegistration> createState() => _AddComplaintRegistrationState();
}

class _AddComplaintRegistrationState extends State<AddComplaintRegistration> {
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
        body:

        ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
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
                  complaintTypeText(
                      SizeConfig.screenHeight, SizeConfig.screenWidth),
                  submitButton(SizeConfig.screenHeight, SizeConfig.screenWidth)
                ],
              ),)
            /* child:
        demoTender(SizeConfig.screenHeight, SizeConfig.screenWidth)),
        viewBidAllParts(SizeConfig.screenHeight, SizeConfig.screenWidth)*/
          ],
        ));
  }

        /* GestureDetector(
          onDoubleTap: () {},
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
              color: Colors.transparent,
              child: ListView(
                children: [
                  complaintTypeText(
                      SizeConfig.screenHeight, SizeConfig.screenWidth),
                  submitButton(SizeConfig.screenHeight, SizeConfig.screenWidth)
                ],
              )),
        ));
  }*/
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
                "Complaint Register",
                style: TextStyle(
                    color: CommonColor.WHITE_COLOR,
                    fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                    fontFamily: 'Roboto_Medium',fontWeight: FontWeight.w500),
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
                                color: CommonColor.BLACK_COLOR,
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
            ),
            maxLines: 5,
          ),
        ),
      ],
    );
  }

  Widget submitButton(double parentHeight, double parentWidth) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
          height: parentHeight * 0.07,
          width: parentWidth * 0.6,
          decoration: BoxDecoration(
            color: CommonColor.TENDER_BOX_TEXT,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Center(
              child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto-Bold',
                    fontSize: 15),
              ))),
    );
  }
}
