import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/theme_constant.dart';

class CustomeCA extends StatelessWidget {
  CustomeCA({
    required this.image,
    Key? key,
  }) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        radius: 30.r,
        backgroundColor: pinkColor,
        child: Image.asset(
          image,
          height: 24.h,
        ),
      ),
    );
  }
}
