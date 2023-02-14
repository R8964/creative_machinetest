import 'package:creativetest/Constant/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomTextField extends StatelessWidget {
  CutomTextField({
    required this.hinttext,
    required this.icon,
    required this.controller,

    Key? key,
  }) : super(key: key);
  final String hinttext;
  final IconData icon;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: greyColor)),
          labelText: hinttext,
          prefixIcon: Icon(
            icon,
            size: 24.h,
          )),
    );
  }
}
