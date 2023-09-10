import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_guide/core/utils/assets/assets.dart';
import 'package:student_guide/core/utils/colors/colors.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: AppColors.primaryColor,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                            fontFamily: "Cairo",
                            color: AppColors.secondaryColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(
                  AssetData.mainPoster,
                  height: 520.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 520.h,
                  width: double.infinity,
                  color: const Color.fromARGB(100, 22, 44, 33),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "كلية\nالحاسبات والذكاء الأصطناعي",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Cairo"),
                              ),
                              Text(
                                "تعرف علي كليتك من خلال التطبيق",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: "Cairo"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 3.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7.r),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "رئيس جامعة بني سويف",
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    width: 100.w,
                    height: 2,
                    decoration: const BoxDecoration(
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Image.asset(
                    AssetData.president,
                    width: double.infinity,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "أ.د منصور حسن",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Stack(
              children: [
                Image.asset(
                  AssetData.mainPoster,
                  height: 650.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 650.h,
                  width: double.infinity,
                  color: const Color.fromARGB(100, 22, 44, 33),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "كلمة الأستاذ الدكتور عميد الكلية",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 100.w,
                          height: 2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(120.sp),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                            child: Image.asset(
                              AssetData.dean,
                              width: 180.sp,

                              height: 180.sp,
                            ),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "أ.د محمد سيد قايد",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        const Text(
                          "أعزائي الطلاب والطالبات، يسعدني أن أرحب بكم في كلية الحاسبات والذكاء الإصطناعي جامعة بني سويف، والتي تهدف إلى إعداد خريج متفوق و متميز في كل مجالات الحاسبات التطبيقية والنظرية حيث تتميز الكلية بالابتكار و التجديد و تزودكم وتمنحكم المهارات التي تؤهلكم لسوق العمل فهي تهتم برفع جودة التعليم و البحث العلمي عن طريق الاستفادة من خبرات أعضاء هيئة التدريس في التخصصات المختلفة وتهتم ايضاً بالجانب الخاص بالأنشطة الطلابية المختلفه التي تساعد في بناء شخصية الطالب و تنمي ثقافاته.\nيمثل الطالب المحور الأساسي و الأهم في العملية التعليمية و الذي يقوم بدوره من العمل بإخلاص لتنمية و تطوير شخصيته و نحن نقوم بدورنا من توفير كل سبل الراحة و متابعة متطلبات الطلاب و حل جميع شؤونهم  فنحن نعمل معاً جاهدين من أجل تحقيق أهدافنا و طموحاتنا لنسعي دائماً للأفضل.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: "Cairo",
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "عن الكلية",
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
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 16,
                    ),
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          AssetData.more,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('المزيد عن الكلية'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Stack(
              children: [
                Image.asset(
                  AssetData.mainPoster,
                  height: 180.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 180.h,
                  width: double.infinity,
                  color: const Color.fromARGB(100, 22, 44, 33),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "رؤية الكلية",
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 25.w,
                          height: 2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية هنا هيكون وصف رؤية الكلية",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Cairo",
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  const Text(
                    "رسالة الكلية",
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 25.w,
                    height: 2,
                    decoration:
                        const BoxDecoration(color: AppColors.secondaryColor),
                  ),
                  SizedBox(height: 20.h),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                "assets/images/${index + 1}.png",
                                width: 30.sp,
                                height: 30.sp,
                                color: AppColors.secondaryColor,
                              )),
                          Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  const Text(
                                      "هنا هيكون اهداف الكلية او الرسالة اللي بتهدف ليا الكلية ان شاء الله "),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    decoration:
                                        BoxDecoration(color: Colors.grey[100]),
                                  ),
                                ],
                              )),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20.h,
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
