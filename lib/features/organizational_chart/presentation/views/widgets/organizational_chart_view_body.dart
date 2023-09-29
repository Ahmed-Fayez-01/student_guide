import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_guide/core/utils/colors/colors.dart';
import 'package:student_guide/core/utils/constants.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/shared_componanets/default_app_bar.dart';
import '../../../../../core/utils/shared_componanets/default_main_title.dart';

class OrganizationalChartViewBody extends StatelessWidget {
  const OrganizationalChartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const DefaultAppBar(),
        const DefaultMainTitle(title: "الهيكل التنظيمي"),
        SizedBox(height: 10.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal:20.w),
          child: Column(
            children: [
              const Text(
                "عميد الكلية",
                style: TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 25.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        AssetData.mainPoster,
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 120.h,
                        width: double.infinity,
                        color: const Color.fromARGB(100, 22, 44, 33),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                        height: 70.w,
                                        width: 70.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            AssetData.dean,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    SizedBox(width: 5.h,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ا.د محمد سيد قايد",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                        Text(
                                          "عميد الكلية",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              const Text(
                "وكلاء الكلية",
                style: TextStyle(
                  fontFamily: "Cairo",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 25.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        AssetData.mainPoster,
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 120.h,
                        width: double.infinity,
                        color: const Color.fromARGB(100, 22, 44, 33),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                        height: 70.w,
                                        width: 70.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            AssetData.isHead,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    SizedBox(width: 5.h,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ا.م.د احمد بهاء",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                        Text(
                                          "وكيل الكلية لشئون خدمة المجتمع والبيئة",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        AssetData.mainPoster,
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 120.h,
                        width: double.infinity,
                        color: const Color.fromARGB(100, 22, 44, 33),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                        height: 70.w,
                                        width: 70.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            AssetData.drKareem,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    SizedBox(width: 5.h,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ا.م.د كريم احمد",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                        Text(
                                          "وكيل الكلية للدرسات العليا والبحوث",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        AssetData.mainPoster,
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        height: 120.h,
                        width: double.infinity,
                        color: const Color.fromARGB(100, 22, 44, 33),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                        height: 70.w,
                                        width: 70.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            AssetData.drFahad,
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    SizedBox(width: 5.h,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "ا.م.د فهد كمال الشريف",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                        Text(
                                          "وكيل الكلية لشئون التعليم والطلاب",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: "Cairo"),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
