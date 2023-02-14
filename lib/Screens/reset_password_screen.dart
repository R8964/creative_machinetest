import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/theme_constant.dart';
import '../Routes/route_pages.dart';
import '../Widgets/custom_button.dart';
import '../Widgets/custome_colored_text.dart';
import '../Widgets/cutom_textButton.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool passenable = true;
  bool visible = false;
  bool _passwordVisible = false;

  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmnewpasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: _width.w,
            height: _height.h,
            color: bgColor,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 60.w, vertical: 50.h),
                    child: Column(
                      children: const [
                        CustomColoredText(),
                        CustomTextHeading()
                      ],
                    ),
                  ),
                  Text(
                    'Hey there.',
                    style: TextStyle(
                        color: textColor,
                        fontSize: tertiaryTextSize.sp,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Reset Your Password',
                    style: TextStyle(
                        color: textColor,
                        fontSize: secondaryTextSize.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),

                  /// Password TextField
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: newpasswordController,
                    obscureText: _passwordVisible ? true : false,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'New Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 24.h,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                          size: 22.h,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: confirmnewpasswordController,
                    obscureText: _passwordVisible ? true : false,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Confirm New Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 24.h,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.white,
                          size: 22.h,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButton(
                    title: 'SUBMIT',
                    navigate: loginscreen,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Center(
                    child: Text(
                      'Please register a new strong password\n'
                      'for your account.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: greyColor,
                          fontSize: tertiaryTextSize.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: secondaryTextSize.sp),
                      ),
                      CustomTextButton(title: "Login?", navigate: loginscreen)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
