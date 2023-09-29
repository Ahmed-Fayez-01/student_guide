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
  List<String> objectives = [
    "إجراء الدراسات والبحوث العلمية والتطبيقية في مجال الحاسبات والذكاء الاصطناعي وفي مقدمتها تلك التي لها أثر مباشر على التنمية المتكاملة في المجتمع وانشاء وحدات ابحاث متخصصة في الفروع المختلفة للحاسبات والذكاء الاصطناعي.",
    "تقديم الاستشارات والمساعدات العلمية والفنية للهيئات والجهات التي تستخدم تكنولوجيا الحاسبات والذكاء الاصطناعي وتهتم بصناعة واتخاذ القرار ودعمه.",
    "تدريب الكوادر الفنية في قطاعات الدولة المختلفة على تكنولوجيا الحاسبات والذكاء الاصطناعي.",
    "نشر الوعي وتعميقه في المجتمع بهدف استخدام تكنولوجيا الحاسبات والذكاء الاصطناعي في قطاعات ومؤسسات الدولة المختلفة، ورفع كفاءة استخدامها.",
    "تنظيم المؤتمرات وعقد الاجتماعات العلمية بهدف الارتقاء بالمستوي التعليمي وتعميق المفهوم العلمي بين الكوادر المتخصصة.",
    "عقد الاتفاقيات العلمية مع الهيئات والمؤسسات المناظرة على المستوي المحلي والإقليمي والعالمي بهدف تبادل الآراء وإجراء البحوث المتعلقة بتخصصات الحاسبات والذكاء الاصطناعي.",
    "توفير وتدعيم وسائل النشر والبحث العلمي في شتي مجالات التخصص.",
    "إنشاء وحدات متخصصة متقدمة في الفروع المختلفة لعلوم الحاسبات والذكاء الاصطناعي.",
  ];

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
                    "كلمة رئيس جامعة بني سويف",
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(120.sp),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: Image.asset(
                        AssetData.president,
                        fit: BoxFit.fitWidth,
                        width: 180.sp,
                        height: 180.sp,
                      ),
                    ),
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
                  SizedBox(
                    height: 5.h,
                  ),
                  const Text(
                    "ابنائي الطلاب و الطالبات \nتهنية قلبية و ترحيب بكم في بداية التحاقكم بجامعة بني سويف و التي تفتح ذراعيها لكم متضمنة كل الانشطة الطلابية و الاكاديمية .و المجتمع الطلابي داخل جامعة بني سويف يمثل اسرة مترابطة و متعاونة لبعضها البعض , و تعمل الجامعة علي توفير متطلبات العمل الدراسي داخل قاعات الدرس و تقديم كافة التسهيلات الممكنة لجميع ابنائنا الطلاب بشان الانشطة الثقافية و الرياضية و العلمية و انشطة الجوالة و غيرها من الانشطة الطلابية التي تحقق نوع جيد من الصلة و التواصل بين الطلاب و اعضاء هيئة التدريس و فريق العمل الاداري بالجامعة ضمن فاعليات الجامعة .آمل ان تكون هذه البداية في الحياة الجامعية هي نقطة الانطلاق لكل منكم نحو تحقيق مستقبل واعد و مميز في النواحي العلمية و الطلابية تمهيدا لتحقيق تطلعاتكم في العمل و المساهمة في تدعيم هذا الوطن الحبيب مصر.\nأبنائي الطلاب دعائي الي الله عزوجل ان يشملكم دائما برعايته و يديم علي وطننا الحبيب مصر كل العزة و التقدم و الرقي .",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 16,
                    ),
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
                              fit: BoxFit.cover,
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
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
                    decoration: const BoxDecoration(
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "تتمثل رسالة كلية الحاسبات والذكاء الاصطناعي في إمداد الطالب بأصول المعرفة والبحث العلمي في مجالات علوم الحاسب ونظم وتكنولوجيا المعلومات وتنمية شخصية الطالب لجعله راغباً في الابتكار ومحباً للعمل الجماعي وقادراً على المنافسة المحلية والإقليمية والعالمية. كما تهدف الى تنمية الوعي بقيمة التعليم المستمر وحتمية التعلم الذاتي وأهمية استخدام الأساليب الحديثة في هذا المجال واستخدام البحث العلمي كوسيلة لتحقيق الابتكار في مجالات الكلية. تهتم الكلية بتقديم خدمة مجتمعية متميزة في مجالات الكلية و تعزيز مبادئ المصداقية والأخلاقيات.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Stack(
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "تسعى كلية الحاسبات والذكاء الاصطناعي بجامعة بني سويف للارتقاء بالمستوى العلمي والعملي والبحثي في مجالات علوم الحاسب وتكنولوجيا المعلومات والوسائط المتعددة لتحقيق مكانة مرموقة بين كليات الحاسبات وتحقيق التميز والابتكار في مجالات التعليم والبحث العلمي وخدمة المجتمع.",
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
                    "اهداف الكلية",
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
                    itemCount: objectives.length,
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
                                  Text(objectives[index],),
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
