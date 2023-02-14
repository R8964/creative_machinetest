import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Constant/theme_constant.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    required this.title,
    required this.navigate,
    Key? key,
  }) : super(key: key);
  String title;
  final String navigate;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Get.toNamed(navigate);
      },
      child: Text(title,
        style: TextStyle(
            fontSize: secondaryTextSize.sp,
            fontWeight: FontWeight.w700,
            color: textColor),),

    );
  }
}
