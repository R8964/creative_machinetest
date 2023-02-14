import 'package:creativetest/Constant/theme_constant.dart';
import 'package:creativetest/Routes/route_pages.dart';
import 'package:creativetest/Widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/custom_circleavat.dart';
import '../Widgets/custom_textfield.dart';
import '../Widgets/custome_colored_text.dart';
import '../Widgets/cutom_textButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passenable = true;
  bool visible = false;
  bool _passwordVisible = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: _width.w,
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
                      children: const [CustomColoredText(), CustomTextHeading()],
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
                    'Login to your account',
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
                    height: 15.h,
                  ),

                  /// Password TextField
                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: passwordController,
                    obscureText: _passwordVisible ? true : false,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Password',
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //
                      CustomTextButton(
                        title: 'Forgot password?',
                        navigate: forgotpasswordscreen,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 24.h,
                  ),

                  CustomButton(
                    title: 'LOGIN',
                    navigate: homescreen,
                  ),

                  SizedBox(
                    height: 20.h,
                  ),
                  Row(children: [
                    Expanded(
                        child: Divider(
                      color: greyColor,
                      thickness: 2.h,
                    )),
                    Text(
                      "Or Continue With",
                      style: TextStyle(
                          color: greyColor,
                          fontSize: tertiaryTextSize.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(
                        child: Divider(
                      color: greyColor,
                      thickness: 2.h,
                    )),
                  ]),

                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomeCA(
                        image: 'assets/google.png',
                      ),
                      CustomeCA(
                        image: 'assets/facebook.png',
                      ),
                      CustomeCA(
                        image: 'assets/apple.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
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
                      CustomTextButton(title: 'Sign Up', navigate: signupscreen)
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
