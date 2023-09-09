import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerTaps extends StatelessWidget {
  const DrawerTaps({
    super.key,
    required this.txt,
    required this.tap,
  });

  final String txt ;
  final Function() tap ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 13.h),
      child: InkWell(
        onTap: tap,
        child: Text(
            txt,
            style:  TextStyle(
              fontFamily: "Tajawal",
              color: const Color(0xff000000),
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
            )
        ),
      ),
    );
  }
}