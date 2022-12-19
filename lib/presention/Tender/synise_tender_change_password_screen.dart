import 'package:flutter/material.dart';
import 'package:synise_project/common_file/colors.dart';
import 'package:synise_project/common_file/size_config.dart';



class TenderChangePassword extends StatefulWidget {
  const TenderChangePassword({Key? key}) : super(key: key);

  @override
  State<TenderChangePassword> createState() => _TenderChangePassword();
}

class _TenderChangePassword extends State<TenderChangePassword> {


  TextEditingController userNameController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


  final _userNameFocus = FocusNode();
  final _oldPasswordFocus = FocusNode();
  final _newPasswordFocus = FocusNode();
  final _confirmPasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: GestureDetector(
        onDoubleTap: (){},
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SizedBox(
          height: SizeConfig.screenHeight * 0.9,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.screenHeight * 0.02,
                    left: SizeConfig.screenWidth * 0.05,
                    right: SizeConfig.screenWidth * 0.05),
                child: TextFormField(
                  controller: userNameController,
                  focusNode: _userNameFocus,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "User Name",
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
                    top: SizeConfig.screenHeight * 0.02,
                    left: SizeConfig.screenWidth * 0.05,
                    right: SizeConfig.screenWidth * 0.05),
                child: TextFormField(
                  controller: oldPasswordController,
                  focusNode: _oldPasswordFocus,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Old Password",
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
                    top: SizeConfig.screenHeight * 0.02,
                    left: SizeConfig.screenWidth * 0.05,
                    right: SizeConfig.screenWidth * 0.05),
                child: TextFormField(
                  controller: newPasswordController,
                  focusNode: _newPasswordFocus,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "New Password",
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
                    top: SizeConfig.screenHeight * 0.02,
                    left: SizeConfig.screenWidth * 0.05,
                    right: SizeConfig.screenWidth * 0.05),
                child: TextFormField(
                  controller: confirmPasswordController,
                  focusNode: _confirmPasswordFocus,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
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
                    top: SizeConfig.screenHeight * 0.05,
                    left: SizeConfig.screenWidth * 0.12,
                    right: SizeConfig.screenWidth * 0.12),
                child: GestureDetector(
                  onDoubleTap: (){},
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: CommonColor.APP_BAR_COLOR,
                        borderRadius: BorderRadius.circular(7)),
                    height: SizeConfig.screenHeight * 0.06,
                    width: SizeConfig.screenWidth * 0.8,
                    child: Center(child: Text("Change Password",
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
          ),
        ),
      ),
    );
  }
}
