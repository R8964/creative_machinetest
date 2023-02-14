import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Constant/theme_constant.dart';


class CustomButton extends StatelessWidget {
   CustomButton({
    required this.title,
     required this.navigate,
    Key? key,
  }) : super(key: key);
  String title;
   final String navigate;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 55.h,
        width: double.infinity,
        child: Card(
          elevation: 18,
          color: pinkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child:  Center(
              child: Text(title,style: TextStyle(color: Colors.white,fontSize:primaryTextSize.sp,fontWeight: FontWeight.bold),)
          ),
        ),
      ),
      onTap: (){
        Get.toNamed(navigate);
      },
    );
  }
}