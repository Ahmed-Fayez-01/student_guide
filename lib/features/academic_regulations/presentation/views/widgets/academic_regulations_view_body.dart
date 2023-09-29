import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/shared_componanets/default_app_bar.dart';
import '../../../../../core/utils/shared_componanets/default_main_title.dart';
import '../../view_models/academic_regulations_cubit/academic_regulations_cubit.dart';

class AcademicRegulationsViewBody extends StatelessWidget {
  AcademicRegulationsViewBody({super.key});

  final List<String> titles = [
    "مواد الائحة الاساسية",
    "تسجيل المواد الدراسية",
    "الأنسحاب من مقرر",
    "إيقاف القيد\n (الأنسحاب من الفصل الداراسي)",
    "الارشاد الاكاديمي",
    "المواظبه والغياب",
    "نظام التقييم",
    "الإنذار الاكاديمي",
    "الرسوب والاعادة",
    "الانتقال بين المستويات",
    "الفصل من الكلية",
    "السجل الاكاديمي"
  ];

  final List<String> materials = [
    "تعتمد الدراسة بالكلية على نظام الساعات المعتمدة ، يتطلب الحصول على درجة البكالوريوس أن يجتاز الطالب بنجاح دراسة (141) ساعة معتمدة تتضمن متطلبات عامة، ومتطلبات للكلية إلى جانب متطلبات التخصص.",
    "على طلاب علمي علوم اجتياز المقرر المقابل لمقررMath 2 الخاص بطلاب علمي رياضة في الثانوية العامة.",
    "الحد الادنى للتخرج (الحصول على درجة البكالوريوس) ثلاث سنوات دراسية و المدة القصوى للدراسة في الكلیة هي ثماني سنوات دراسية، مع ملاحظة عدم احتساب فصول إيقاف القيد التي تمت الموافقة عليها من قبل مجلس الكلیة ومجلس الجامعة ضمن الفصول المسموح بها.",
    "الدراسة في المستوى الاول والثاني مشتركة لجميع التخصصات، ويبدأ التخصص في المستوى الثالث. ولكل قسم أن يضع الشروط المؤهلة للالتحاق به بعد إقرارها من مجلس الكلية.",
    "مستويات الدراسة بالكلية هي أربعة مستويات ويشار إلى الطلاب مع بداية كل عام دراسي بالمسميات المذكورة في الجدول التالي:",
    "الطالب المحول من كلية أخري يتم قيده في المستوي الموازي لعدد الساعات التي اجتازها في الكلية المحول منها بناءً على مقاصة وكما هو وارد في الجدول السابق.",
    "لغة التدريس هي اللغة الإنجليزية، ويمكن تدريس مقررات متطلبات الجامعة باللغة العربية على ان يكون الامتحان بنفس لغة تدريس المقرر.",
    "يتحتم على الطالب حضور ‘تدريب ميداني ‘Field Training لمدة ستة أسابيع بواقع 5 ساعات أسبوعية خلال أي عطلة صيفية بشرط اجتياز الطالب 60% من عدد الساعات المعتمدة اللازمة للتخرج.",
    "مقرر التدريب الميداني هو مقرر 3 ساعات معتمدة ومن متطلبات التخرج لكنه لا يحتسب عند حساب المعدل التراكمي للطالب.",
    "يحق للطالب الذي اجتاز 70% من عدد الساعات المعتمدة اللازمة للتخرج تسجيل مقرر مشروع التخرج و يقدر المشروع بقيمة (6) ساعات معتمدة ويمتد لفصلين دراسيين. الحد الأدنى للنجاح في المشروع هو 50% من مجموع درجات المقرر.",
    "شروط التخرج أن يجتاز الطالب بنجاح عدد الساعات المعتمدة المنصوص عليها في اللائحة بمعدل تراكمي مجمع لا يقل عن 2 (CGPA).",
    "مع بداية كل فصل دراسي يقوم الطالب بتسجيل المقررات الدراسية قبل بدء انتظام الدراسة وذلك بعد دفع الرسوم الدراسية المطلوبة للمقررات المراد التسجيل فيها كاملة.",
    "في الفصل الدراسي الأول و الثاني يكون الحد الأدنى للساعات المعتمدة للتسجيل (9) ويجوز التجاوز عن الحد الأدنى إذا كان عدد الساعات المتبقية للطالب للتخرج أقل من (9) ساعات.",
    "و الحد الأقصي:\n18 ساعة معتمدة للطلاب المستجدین (من غیر المحولین من كلیات مناظرة) في الفصل الدراسي الأول لالتحاقهم بالكلية.\n\n21 ساعة معتمده للطلاب الحاصلين على CGPA في بداية الفصل الدراسي اعلى من او يساوي 3 وكذلك في حالة تخرج الطالب في ذات الفصل.\n\n18 ساعة معتمده للطلاب الحاصلين على CGPA في بداية الفصل الدراسي اعلى من او يساوي 2 واقل من 3.\n\n15 ساعة معتمده للطلاب الحاصلين على CGPA في بداية الفصل الدراسي اعلى من او يساوي 1 واقل من2.\n\n12 ساعة معتمده للطلاب الحاصلين على CGPA في بداية الفصل الدراسي اقل من 1.\n\nبالإضافة للساعات المذكورة أعلاه، يسمح للطلاب الراغبين في تسجيل مقرر 1 إضافي حاصلين به سابقا على تقدير غير مكتمل.",
    "بالنسبه للفصل الصيفي هو فصل اختياري و الحد الأقصى للساعات المسجلة للطالب هو 9 ساعات معتمدة.",
  ];


  @override
  Widget build(BuildContext context) {
    AppConstants.selectedQuestionNow = null;
    final List<Widget> widgets = [
      ListView.builder(

          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: materials.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "مادة ${index + 1}",
                  style: const TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  width: 20.w,
                  height: 2,
                  decoration: const BoxDecoration(
                    color: AppColors.secondaryColor,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                index != 4
                    ? Text(
                        materials[index],
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontFamily: "Cairo",
                          fontSize: 16,
                        ),
                      )
                    : Column(
                        children: [
                          Text(
                            materials[index],
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            child: const Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "المستوي الدراسي",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "تعريف الطالب",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "عدد الساعات المعتمدة التي اجتازها الطالب بنجاح",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "الاول",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Freshman",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "من 0 ساعة حتى أقل من 36 ساعة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          const Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "الثاني",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Sophomore",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "من 36 ساعة حتى أقل من 72 ساعة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          const Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "الثالث",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Junior",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "من 72 ساعة حتى أقل من 108 ساعة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          const Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "الرابع",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Senior",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "من 108 ساعة حتى 141 ساعة",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
              ],
            );
          }),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
              "مع بداية كل فصل دراسي يقوم الطالب بتسجيل المقررات الدراسية التي يختارها (بما لا يخل بالحد الأدنى والحد الأقصى لعدد ساعات التسجيل الموضحة سابقاً)، طبقاً للآتي:"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 20,
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Expanded(
                  child: Text(
                      "الوقت المتاح لتسجيل المقررات يكون خلال أسبوعين من بدأ انتظام الدراسة بالفصلين الدراسيين النظاميين (الخريف والربيع) او خلال أسبوع واحد من بداية الفصل الصيفي."))
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 20,
                child: Text(
                  "2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Expanded(
                  child: Text(
                      "يجوز للطالب بعد تسجيله للمقررات حذف أو إضافة لبعض المقررات أو تغيير مقررات بأخرى وذلك خلال أربعة أسابيع من بدء انتظام الدراسة بالفصلين الدراسيين النظاميين (الخريف والربيع) او خلال أسبوعين من بداية الفصل الصيفي."))
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 20,
                child: Text(
                  "3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              const Expanded(
                  child: Text(
                      "يسمح للطالب بدراسة المقررات المختلفة والتسجيل في مقررات المستويات الأعلى بناء على تسجيله المقررات المطلوبة كمتطلبات للمقررات الأعلى في فصل دراسي سابق."))
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                  "يجوز للطالب بعد تسجيل المقررات التي اختارها أن ينسحب من مقرر أو أكثر خلال سبعة أسابيع على الأكثر من بداية الدراسة بالفصليين النظاميين (الخريف والربيع) واربعة اسابيع على الأكثر من بداية الدراسة بالفصل الصيفي بحيث لا يقل عدد الساعات المسجلة للطالب بعد الانسحاب عن الحد الأدنى للتسجيل في الفصل الدراسي الواحد وفي هذه الحالة لا يعد الطالب راسبا في المقررات التي انسحب منها ويحتسب له تقدير 'منسحب' ('W') ويتوجب عليه إعادة المقرر كاملا دراسة وامتحان. ")
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 2",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                  "إذا انسحب الطالب من مقرر أو أكثر بعد الفترة المحددة لذلك دون عذر قهري يقبله مجلس الكلية   يحتسب له تقدير 'راسب' ('F') في المقررات التي انسحب منها.")
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 3",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                  "إذا تقدم الطالب بعذر قهري يقبله مجلس الكلية عن عدم حضور الامتحان النهائي لأي مقرر خلال يومين من إجراء الامتحان يحتسب له تقدير 'غير مكتمل' ('I') في هذا المقرر ً بشرط أن يكون حاصلا على 60% على الأقل من درجات الأعمال الفصلية، وألا يكون قد تم حرمانه من دخول الامتحانات النهائية.")
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 4",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                  "يتاح للطالب الحاصل على تقدير 'غير مكتمل' أداء الامتحان النهائي فقط، وتحتسب الدرجة النهائية للطالب على أساس الدرجة الحاصل عليها في الامتحان النهائي إضافة الى الدرجة السابق الحصول عليها في الأعمال الفصلية.وذلك بشرط أداء الامتحان خلال نفس العام او العام الدراسي التالي من احتساب مقرر 'غير مكتمل'.")
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 5",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                  "إذا تقدم الطالب بعذر قهري يقبله مجلس الكلية عن عدم حضور الامتحان النهائي لأي مقرر خلال يومين من إجراء الامتحان ولم يتحقق شرط ان يكون حاصلاً على 60% على الأقل من درجات الأعمال الفصلية، يحتسب له تقدير 'منسحب' ('W') في المقرر ويتوجب عليه إعادة المقرر كاملاً دراسة وامتحان.")
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 6",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                  "تقدير 'مستمر': هو تقدير يرصد مؤقتاً لكل مقرر تقتضي طبيعة دراسته أكثر من فصل دراسي لاستكماله، ويرمز له بالرمز (Con).")
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text(
                  "الطالب الذي لم يحضر للتسجيل خلال فترة التسجيل أو التسجيل المتأخر في الفصول النظامية يعتبر منسحباً من الفصل الدراسي.")
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text(
                  "تحدد الكلیة لكل مجموعة من الطلاب مرشدا أكاديميا من أعضائها يقوم بمهام الإرشاد الأكاديمي للطالب ويساعده على اختيار المقررات التي يدرسها والتسجيل فيها وتوجيه طوال فترة دراسته بالكلية. ويعتبر رأي المرشد الاكاديمي استشاري , أي ان الطالب هو المسئول عن المقررات التي يقوم بتسجيلها.")
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("الدراسة في الكلية  نظامية ولا يجوز فيها الانتساب.")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 2",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("يتطلب دخول الطالب الامتحان النهائي تحقيق نسبة حضور لا تقل عن 75% من مجموع الساعات الفعلية (محاضرات – تمارين – عملي) في كل مقرر.")
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 3",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("وإذا تجاوزت نسبة غياب الطالب – دون عذر مقبول - في أحد المقررات عن 25%، يحق لمجلس الكلية حرمانه من دخول الامتحان النهائي بعد إنذاره. ويعطي درجة 'صفر' في درجة الاختبار النهائي للمقرر. أما إذا تقدم الطالب بعذر يقبله مجلس الكلية (وفي الفترة التي يحددها المجلس)، يحتسب له تقدير 'منسحب' ('W') في المقرر الذي قدم عنه العذر.")
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("تتبع الكلية نظام الساعات المعتمدة والذي يعتمد على أن الوحدة الأساسية هي المقرر الدراسي وليس السنة ويكون نظام التقييم على أساس التقدير في كل مقرر دراسي بنظام النقاط والذي يحدد طبقاً للجدول التالي:")
            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            padding: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "النسبة المئوية (%)",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "الرمز",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "النقاط",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "96% فأكثر",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "A+",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "4.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "92% - أقل من 96%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "A",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "3.7",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "88% - أقل من92%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "A-",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "3.4",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "84% - أقل من88%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "B+",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "3.2",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "80% - أقل من84%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "B",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "3.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "76% - أقل من80%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "B-",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "2.8",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "72% - أقل من76%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "C+",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "2.6",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "68% - أقل من72%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "C",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "2.4",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "64% - أقل من68%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "C-",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "2.2",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "60% - أقل من64%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "D+",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "2.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "55% - أقل من60%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "D",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "1.5",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                 "50% - أقل من55%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "D-",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "1.0",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "أقل من 50%",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "F",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Zero",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "غياب عن حضور الامتحان النهائي بدون عذر مقبول من مجلس الكلية",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Abs",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Zero",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "مقرر مستمر في الفصل التالي",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "Con",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "مقرر غير مكتمل",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "I",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "الانسحاب من مقرر",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "W",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(children: [
                  Text("بدون نقاط مع عدم احتساب عدد الساعات ضمن المعدل التراكمي الا بعد الانتهاء من دراسة المقرر سواء بالنجاح او الرسوب", style: TextStyle(fontSize: 12),)
                ],),
              )
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 2",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("حساب المعدل الفصلي (GPA) والمعدل التراكمي (CGPA):",style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              const Text(" يتم حساب معدل الطالب الفصلي لكل المقررات خلال الفصل الدراسي الواحد مع التقريب لأقرب علامتين عشريتين على النحو التالي:Grade Point Average (GPA)\nبينما يتم حساب المعدل التراكمي لكل المقررات خلال جميع الفصول الدراسية التي درسها الطالب مع التقريب لأقرب علامتين عشريتين على النحو التالي: Cumulated GPA (CGPA)"),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 3",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              const Text("مقررات النجاح والرسوب (بدون ساعات معتمدة):تكون الدرجة كاملة على الامتحان النهائي. ويكون جدول تقديرات تلك المقررات كالآتي:"),
            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            padding: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "التقدير",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    "المعني",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "AU",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "مستمع",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "P",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "ناجح",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "F",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "راسب",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "W",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "منسحب",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "Abs",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "غیاب عن حضور الامتحان النهائي بدون عذر مقبول من مجلس الكلیة",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 4",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              const Text("يتم حساب التقدير العام للطالب بناء على المعدل التراكمي الحاصل عليه الطالب طبقاً للجدول التالي: "),
            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            padding: EdgeInsets.all(5.sp),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "المعدل التراكمي",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Text(
                    "التقدير العام",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "أقل من 1",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "ضعيف جدا",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "1 أقل من 2",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "ضعيف",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  " 2 أقل من 2.5",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "مقبول",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "2.5 أقل من 3",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "جيد",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "3 أقل من 3.5 ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "جيد جدا",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "3.5 فأكثر",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "ممتاز",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 5",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              const Text("يمنح الطالب مرتبة الشرف في حالة اجتيازه للمقررات الدراسية التي درسها بكل مستوى دراسي بتقدير لا يقل عن جيد جدا (أي بمعدل تراكمي مجمع CGPA لا يقل عن 3(، وبشرط ألا تزيد فترة الدراسة عن أربع سنوات (ثمانية فصول دراسية نظامية)، وألا يكون الطالب قد رسب أو تم حرمانه في أي مقرر دراسي خلال دراسته بالكلیة أو الكلية المحول منها ( إن وجدت ) ."),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 6",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              const Text("يتم ترتيب الطلاب بناءً على المعدل التراكمي المجمع (CGPA) وفى حالة التســاوي يتم الترتيب بناءً على المجموع الكلى للدرجات."),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("يحصل الطالب على إنذار أكاديمي (ويوضع الطالب تحت الملاحظة الأكاديمية) إذا كان معدله التراكمي المجمع (CGPA) في أي فصل دراسي نظامي أقل من 2 (فيما عدا الفصل الدراسي الأول للطالب بالكلية).")
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("لا يعتبر الطالب ناجحاً في أي مقرر الا إذا حصل على (50) درجة كحد أدني، بتقدير (D-) على الأقل.")
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 2",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text("يحسب معدل الطالب التراكمي على هذا الأساس، مع احتساب عدد ساعات المقرر مرة واحدة.")
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 3",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text("تظهر جميع مرات الإعادة والدرجة (أو التقدير) الحاصل عليه الطالب في كل إعادة في الشهادة التفصيلية الخاصة بالطالب.")
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 4",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text("يدفع الطالب مقابل إعادة المقرر بما يوازي المقابل الذي يدفعه في حالة تسجيله للمقرر في الفصل الدراسي الصيفي.")
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("يقيد الطالب بالمستوى الأول عند التحاقه بالكلية ويظل الطالب مقيدا بالمستوى الأول طالما لم يجتاز 33 ساعة معتمدة.")
            ],
          ),
          Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 2",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text("الطالب المحول من كلية أخرى يتم قيده في المستوى الموازي لعدد الساعات التي اجتازها في الكلية المحول منها بناءً على مقاصة.")
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 3",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text("يمكن للطالب الانتقال من مستوى لآخر في بداية كل فصل دراسي وذلك بحسب الساعات التي اجتازها كما هو وارد في الجدول التالي:")
            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "المستوي الدراسي",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "تعريف الطالب",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "عدد الساعات المعتمدة التي اجتازها الطالب بنجاح",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "الاول",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Freshman",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "من 0 ساعة حتى أقل من 36 ساعة",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "الثاني",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Sophomore",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "من 36 ساعة حتى أقل من 72 ساعة",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "الثالث",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Junior",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "من 72 ساعة حتى أقل من 108 ساعة",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          const Divider(),
          const Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  "الرابع",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Senior",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "من 108 ساعة حتى 141 ساعة",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("يفصل الطالب الحاصل على إنذار أكاديمي في أربعة فصول دراسية نظامية متتالية، أو ستة فصول دراسية نظامية متفرقة (مع أمكانية ان يكون بعضها متتالي).")
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 2",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text("يفصل الطالب من الكلية إذا حصل وأن تجاوز المدة القصوى للدراسة بالكلية، وذلك بعد حذف فصول وقف القيد.")
            ],
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 3",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              const Text("الطالب المعرض للفصل من الدراسة لأي سبب من المذكور أعلاه، يمكن اتاحة فرصة إضافية ونهائية له للتسجيل في فصلين دراسيين نظاميين متتاليين بالإضافة لفصل صيفي، وذلك لتحقيق شروط التخرج بشرط ان يكون قد اجتاز ما لا يقل عن 80% من اجمالي عدد الساعات اللازمة للتخرج وذلك بعد موافقة مجلس الكلية ومجلس الجامعة.")
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "مادة 1",
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
                width: 20.w,
                height: 2,
                decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Text("السجل الأكاديمي هو بيان يوضح سير الطالب الدراسي، ويشمل المقررات التي يدرسها في كل فصل دراسي برموزها وأرقامها وعدد وحداتها المقررة والتقديرات التي حصل عليها، ورموز وقيم تلك التقديرات، كما يوضح السجل المعدل الفصلي والمعدل التراكمي وبيان التقدير العام، بالإضافة إلى المقررات التي أعفي منها الطالب المحول من كلية جامعية أخرى.")
            ],
          ),
        ],
      ),
    ];
    return Column(
      children: [
        const DefaultAppBar(),
        const DefaultMainTitle(title: "الائحة الدراسية"),
        SizedBox(
          height: 10.h,
        ),
        BlocBuilder<AcademicRegulationsCubit, AcademicRegulationsState>(
          builder: (context, state) {
            AcademicRegulationsCubit cubit =
                AcademicRegulationsCubit.get(context);
            return Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                key: Key(
                    'builder ${AppConstants.selectedQuestionNow.toString()}'),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ExpansionTileCard(
                    key: Key(index.toString()),
                    initiallyExpanded: AppConstants.selectedQuestionNow == index,
                    onExpansionChanged: (val) {
                      cubit.switchQuestionColor(val, index);
                      if (val) {

                      }
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                    trailing: CircleAvatar(
                      radius: 15,
                      backgroundColor:
                          index == AppConstants.selectedQuestionNow &&
                                  AppConstants.selectedQuestionState == true
                              ? AppColors.primarySwatchColor
                              : Colors.white24,
                      child: Icon(
                        CupertinoIcons.chevron_down,
                        color: index == AppConstants.selectedQuestionNow &&
                                AppConstants.selectedQuestionState == true
                            ? Colors.white
                            : Colors.white,
                        size: 18,
                      ),
                    ),
                    animateTrailing: true,
                    elevation: 0,
                    baseColor: AppColors.primaryColor,
                    expandedColor: Colors.white,
                    title: Text(
                      titles[index],
                      style: TextStyle(
                          color: index == AppConstants.selectedQuestionNow &&
                                  AppConstants.selectedQuestionState == true
                              ? AppColors.primarySwatchColor
                              : Colors.white,
                          fontSize: 16.sp,
                          fontFamily: "Cairo",
                          fontWeight: FontWeight.w500,
                          height: 1.2.h),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: widgets[index],
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: titles.length,
              ),
            );
          },
        ),
      ],
    );
  }
}

