import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';

abstract class Styles{
  static TextStyle splashtext() => TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: const Color(0xff646569),
    fontFamily: "FrutigerLTArabic",
  );
  static TextStyle onboardingTitletext() => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
    fontFamily: "Tajawal",
  );
  static TextStyle onboardingdescriptiontext() => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xff777883),
    fontFamily: "Tajawal",
  );
  static TextStyle smallbuttontext() => TextStyle(
    fontSize: 20.0.sp,
    color: Colors.white,
    fontFamily: "Tajawal",
    fontWeight: FontWeight.w400,
  );
  static TextStyle defaultbuttontext() => TextStyle(
    fontSize: 14.0.sp,
    color: Colors.white,
    fontFamily: "Tajawal",
    fontWeight: FontWeight.w700,
  );
  static TextStyle authtitle() => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
    fontFamily: "Tajawal",
  );
  static TextStyle authdescription() => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontFamily: "Tajawal",
  );
  static TextStyle hinttext() => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff808D9E),
    fontFamily: "Tajawal",
  );
  static TextStyle defaulttextformfield() => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontFamily: "Tajawal",
  );
  static TextStyle homeLogoTitle()=>TextStyle(
      fontFamily: "FrutigerLTArabic",
      fontSize: 10.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xff646569)
  );
  static TextStyle paragraphTitle()=> TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontFamily: "Tajawal");
  static TextStyle homeMainTitle()=> TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w700,
      fontFamily: "Tajawal");
  static TextStyle questionText()=>TextStyle(
      fontFamily: "Tajawal",
      fontSize: 10.sp,
      fontWeight: FontWeight.w700,
      color:  Colors.white
  );
}