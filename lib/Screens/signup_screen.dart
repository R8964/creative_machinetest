import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/theme_constant.dart';
import '../Routes/route_pages.dart';
import '../Widgets/custom_button.dart';
import '../Widgets/custom_circleavat.dart';
import '../Widgets/custom_textfield.dart';
import '../Widgets/custome_colored_text.dart';
import '../Widgets/cutom_textButton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkValue = false;

  bool passenable = true;
  bool visible = false;
  bool _passwordVisible = false;

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
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
                    'Create new account',
                    style: TextStyle(
                        color: textColor,
                        fontSize: secondaryTextSize.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CutomTextField(
                    controller: firstname,
                    icon: Icons.person_outline,
                    hinttext: 'First Name',
                  ),

                  CutomTextField(
                    controller: lastname,
                    icon: Icons.person_outline,
                    hinttext: 'Last Name',
                  ),

                  CutomTextField(
                    controller: emailController,
                    icon: Icons.email,
                    hinttext: 'Email',
                  ),

                  CutomTextField(
                    controller: phone,
                    icon: Icons.phone,
                    hinttext: 'Phone',
                  ),

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

                  TextField(
                    textAlignVertical: TextAlignVertical.center,
                    controller: confirmpassword,
                    obscureText: _passwordVisible ? true : false,
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Confirm Password',
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
                    height: 15.h,
                  ),

                  Row(
                    children: [
                      Checkbox(
                        checkColor: greyColor,
                        activeColor: primaryColor,
                        value: this.checkValue,
                        onChanged: (value) {
                          setState(() {
                            this.checkValue = value!;
                          });
                        },
                      ),
                      Text(
                        'By continuing you accept our Privacy\n'
                            'Policy and Term of Use',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: greyColor,
                            fontWeight: FontWeight.w600,
                            fontSize: tertiaryTextSize.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),

                  CustomButton(
                    title: 'SIGNUP',
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
                        'Already have an account?',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: secondaryTextSize.sp),
                      ),
                      CustomTextButton(title: 'Login', navigate: loginscreen)
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
