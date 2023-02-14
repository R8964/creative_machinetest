import 'package:creativetest/Routes/route_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/theme_constant.dart';
import '../Widgets/custom_button.dart';
import '../Widgets/custom_textfield.dart';
import '../Widgets/custome_colored_text.dart';
import '../Widgets/cutom_textButton.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();

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
                    'Forgot Your Password?',
                    style: TextStyle(
                        color: textColor,
                        fontSize: secondaryTextSize.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CutomTextField(
                    controller: emailController,
                    icon: Icons.email,
                    hinttext: 'Email',
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButton(
                    title: 'SUBMIT',
                    navigate: resetpasswordscreen,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Center(
                    child: Text(
                      'A link will be sent to your registered email\n'
                      'address to reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: greyColor,
                          fontSize: tertiaryTextSize.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 200.h,
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
