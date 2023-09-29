import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/shared_componanets/default_app_bar.dart';
import '../../../../../core/utils/shared_componanets/default_main_title.dart';

class AdministrativeStructureViewBody extends StatelessWidget {
  const AdministrativeStructureViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const DefaultAppBar(),
        const DefaultMainTitle(title: "الهيكل الأداري"),
        Expanded(child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                const Text(
                  "مدير الكلية",
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
                  height: 10.h,
                ),
                Column(
                  children: [
                    Container(
                        height: 90.w,
                        width: 90.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          AssetData.saeedModer,
                          fit: BoxFit.contain,
                        )),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 60,
                    width:150,
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "سعيد الكومي",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: "Cairo"),
                                    ),
                                    Text(
                                      "مدير الكلية",
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
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                const Text(
                  "مديرين الأقسام",
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
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.drAdel,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "د.عادل خليفة",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "دراسات عليا",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                    SizedBox(width: 10.w,),
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.abdelhameedStudents,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "عبد الحميد محمد",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "شئون الطلاب",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                    SizedBox(width: 10.w,),
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.abdelghani,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "محمد عبد الغني",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "شئون المالية",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.ibraheem,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "ابراهيم فرغلي",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "رعاية الشباب",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                    SizedBox(width: 10.w,),
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.hanan,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "حنان محمد",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "المكتبة",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                    SizedBox(width: 10.w,),
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.yousef,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "يوسف شلبي",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "المعامل",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.anwar,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "أحمد أنور",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "شئون عاملين",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                    SizedBox(width: 10.w,),
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 80.w,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  AssetData.basem,
                                  fit: BoxFit.contain,
                                )),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: 40.h,
                            width:100.w,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "باسم جميل",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                            Text(
                                              "الاقسام العلمية",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Cairo"),
                                            ),
                                          ],
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
                  ],
                ),
              ],
            )
          ],
        )),
      ],
    );
  }
}
