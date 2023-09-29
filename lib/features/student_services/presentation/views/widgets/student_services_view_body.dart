import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/shared_componanets/default_app_bar.dart';
import '../../../../../core/utils/shared_componanets/default_main_title.dart';

class StudentServicesViewBody extends StatelessWidget {
  const StudentServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultAppBar(),
        const DefaultMainTitle(title: "الأنشطة الطلابية"),
        Expanded(
          child: Stack(
            children: [
              Image.asset(
                AssetData.mainPoster,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                color: const Color.fromARGB(100, 22, 44, 33),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 90.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(30.sp),
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    child: Image.asset(
                                      AssetData.GDSC,
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding:
                                EdgeInsets.symmetric(horizontal: 20.sp),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.arrow_back_ios),
                                    Spacer(),
                                    Text(
                                      "GDSC",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.sp),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 90.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(30.sp),
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.sp),
                                          child: Image.asset(
                                            AssetData.GDG,
                                            fit: BoxFit.contain,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20.sp),
                                      child: const Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.arrow_back_ios),
                                          Spacer(),
                                          Text(
                                            "GDG",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.sp),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.sp),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 90.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(30.sp),
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30.sp),
                                          child: Image.asset(
                                            AssetData.ICPC,
                                            fit: BoxFit.contain,
                                          )),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 20.sp),
                                      child: const Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.arrow_back_ios),
                                          Spacer(),
                                          Text(
                                            "ICPC",
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.sp),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 90.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(30.sp),
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    child: Image.asset(
                                      AssetData.IEEE,
                                      fit: BoxFit.contain,
                                    )),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 20.sp),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.arrow_back_ios),
                                    Spacer(),
                                    Text(
                                      "IEEE",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
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
