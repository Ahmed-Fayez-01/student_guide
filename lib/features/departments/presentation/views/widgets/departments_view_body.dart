import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';

class DepartmentsViewBody extends StatelessWidget {
  const DepartmentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Image.asset(
                AssetData.logo,
                width: 70.sp,
                height: 70.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "دليل الطالب",
                    style: TextStyle(
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor),
                  ),
                  const Text(
                    "كلية الحاسبات والذكاء الاطناعى",
                    style: TextStyle(
                        fontFamily: "Cairo", color: AppColors.secondaryColor),
                  ),
                ],
              )
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AssetData.mainPoster,
              height: 60.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              height: 60.h,
              width: double.infinity,
              color: const Color.fromARGB(100, 22, 44, 33),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "الاقسام العلمية",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Cairo"),
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
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 200,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          AssetData.mainPoster,
                          height: 200.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 200.h,
                          width: double.infinity,
                          color: const Color.fromARGB(100, 22, 44, 33),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      const CircleAvatar(
                                        radius: 21,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 20,
                                          child: Text("CS"),
                                        ),
                                      ),
                                      SizedBox(height: 10.h,),
                                       Text(
                                        "علوم الحاسب",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
                                      ),
                                      Text(
                                        "( Computer Science )",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
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
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 200,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          AssetData.mainPoster,
                          height: 200.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 200.h,
                          width: double.infinity,
                          color: const Color.fromARGB(100, 22, 44, 33),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                    const CircleAvatar(
                                      radius: 21,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: Text("IT"),
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        "تكنولوجيا المعلومات",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
                                      ),
                                      Text(
                                        "( Information Technology )",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
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
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 200,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          AssetData.mainPoster,
                          height: 200.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 200.h,
                          width: double.infinity,
                          color: const Color.fromARGB(100, 22, 44, 33),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      const CircleAvatar(
                                        radius: 21,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 20,
                                          child: Text("IS"),
                                        ),
                                      ),
                                      SizedBox(height: 10.h,),
                                       Text(
                                        "نظم المعلومات",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
                                      ),
                                      Text(
                                        "( Information System )",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
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
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 200,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          AssetData.mainPoster,
                          height: 200.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          height: 200.h,
                          width: double.infinity,
                          color: const Color.fromARGB(100, 22, 44, 33),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                    const CircleAvatar(
                                      radius: 21,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 20,
                                        child: Text("MM"),
                                      ),
                                    ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        "الوسائط المتعددة",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
                                      ),
                                      Text(
                                        "( MultiMedia )",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontFamily: "Cairo"),
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
