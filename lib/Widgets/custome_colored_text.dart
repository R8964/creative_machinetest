import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/theme_constant.dart';

/// Colored Text (KARAKOVER)
class CustomColoredText extends StatelessWidget {
  const CustomColoredText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: 'KA',
              style: TextStyle(
                  color: const Color(0xffDF7A7A),
                  fontWeight: FontWeight.w800,
                  fontSize: 34.sp)),
          TextSpan(
              text: 'RA',
              style: TextStyle(
                  color: const Color(0xff34D31A),
                  fontWeight: FontWeight.w800,
                  fontSize: 34.sp)),
          TextSpan(
              text: 'K',
              style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontWeight: FontWeight.w800,
                  fontSize: 34.sp)),
          TextSpan(
              text: 'OV',
              style: TextStyle(
                  color: const Color(0xff5842E4),
                  fontWeight: FontWeight.w800,
                  fontSize: 34.sp)),
          TextSpan(
              text: 'ER',
              style: TextStyle(
                  color: const Color(0xffFA7238),
                  fontWeight: FontWeight.w800,
                  fontSize: 34.sp)),
        ]));
  }
}

/// Text(LETS PLAY......)
class CustomTextHeading extends StatelessWidget {
  const CustomTextHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Lets Play, Learn, Create, Listen',
      style: TextStyle(
          color: textColor,
          fontSize: tertiaryTextSize.sp,
          fontWeight: FontWeight.w300),
    );
  }
}


