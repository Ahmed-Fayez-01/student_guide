import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:student_guide/core/utils/shared_componanets/default_main_title.dart';
import 'package:student_guide/features/departments/data/person_Model.dart';
import 'package:student_guide/features/departments/presentation/views/department_details_view.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/shared_componanets/default_app_bar.dart';

class DepartmentsViewBody extends StatelessWidget {
  const DepartmentsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultAppBar(),
        const DefaultMainTitle(title: "الاقسام العلمية"),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            DepartmentDetailsView(
                                description: "في قسم علوم الحاسب يكون الطالب بحاجه الى أن يكون لدية معرفة بقدر كبير من الرياضيات والتفاضل والجبرالخطي، في هذا القسم ستتعلم وتمارس كثيراً من البرمجة بمختلف اللغات ، اذا كنت لا تحب البرمجة فهذا ليس المجال المناسب لك، بجانب البرمجة فإن الدراسه ستتركز على كثير من الموضوعات العملية وكثير من النظريات، ستدرس الكثير من الخوارزميات بجانب البرمجة، وستتعلم طرقاً مختلفة للتفكير يستحيل أن يصل اليها المطور العادي الذي لم يدرس مجال علوم الحاسب، فليس المهم كتابة برنامج، ولكن المهم هو طريقة كتابته وطريقة تشغيله. يركز هذا القسم على مهام تقنيه دقيقة ومتخصصة ويبتعد عن الجانب الإداري، فالدارس لا يشغل نفسه بعملية إدارة المشروع ولكن يركز على انجاز المهام التقنية الموكلة إليه بإستخدام خوارزميات وطرق رياضية وافكار خارج الصندوق وكثير من البرمجة. ويقوم الدارس بتقييم الطرق التي استخدمها في الحلول والوقوف على تكلفتها ودرجة تعقيدها. ",title: "علوم الحاسب", assistant: PersonModel.
                                csAssistant, banner: AssetData.csBanner, doctors:
                                PersonModel.csDoctors)));
                  },
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .stretch,
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
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            DepartmentDetailsView(
                                description: "هذا المجال لا يحتاج هذا الكم الهائل من المعرفة بالرياضيات وفروعها مثل الحال بمجال علوم الحاسب ، ويركز بعض الشيء على استخدام التكنولوجيا وادارتها بالشكل الامثل، في هذا المجال ستستخدم البرمجة ولكن بطريقة عملية فقط ، وستدرس بعض الخوارزميات ولكن ليس بنفس المستوى الموجود في تخصص علوم الحاسب ، ففي هذا المجال ستدرس فقط الخوارزميات التي تحتاجها من أجل توظيف التكنولوجيا بالشكل الامثل ،ستكتب برامج لحفظ البيانات في قواعد بيانات موجودة على خوادم متصلة بشبكة المعلومات ، وستتمكن من تصميم وبرمجة مواقع تسمح للمستخدمين بالتسجيل والتفاعل ، في هذا المجال تستخدم بعض الخوارزميات ولكن المهم هو انجاز المهام فمثلا الهدف هو ترتيب مجموعه من البيانات ولكن يمكن استخدام اي خوارزم جاهز لترتيبهم ، فالمهم هو انجاز المهام وليس طريقة انجازها بالشكل الامثل ، وفي هذا المجال لا يكون التركيز على البرمجة فقط ولكن يكون بشكل أكبر على الشبكات وقواعد البيانات والاستفادة منهم في تطوير المنظومة والبنية التحتية للمؤسسة ، والتركيز فقط على المنظومة التكنولوجية باكملها وتأسيس الشبكات وتهيئة الخوادم وتجهيز قواعد البيانات والمكتبات والبرمجيات الضرورية.",title: "تكنولوجيا المعلومات", assistant: PersonModel.
                            itAssistant, banner: AssetData.itBanner, doctors:
                            PersonModel.itDoctors)));
                  },
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .stretch,
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
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            DepartmentDetailsView(
                                description: "هذا المجال يركز اكثر على الادارة و يعلمك عندما تريد انشاء نظام ضخم يستخدم التكنولوجيا ويتعامل مع مئات او آلاف المستخدمين والموظفين فكيف تديره وتخطط له بالشكل الامثل بحيث تستفيد من التكنولوجيا والبرمجيات وتوظفها بالشكل الامثل الذي يضمن زيادة الإنتاجية والكفاءة. في هذا المجال يكون التركيز الأكبر على تصميم وتحليل النظم وكتابة مستندات documentation تشرح التصميم ، وتقديم البراهين والدفاعات اللازمة عن التصميم وخصوصا اذا كان بناء النظام الذي نحتاجه سيكلف اموالا باهظة، ستقوم بدراسة مقررات لإدارة المشروعات ، يدرس الملتحق بهذا التخصص بعض لغات البرمجة البسيطة ولكن يركز اكثر على المهام الإدارية، والهدف من دراسة لغات البرمجة هو ان اي مبرمج يحتاج ان يكون مديره على علم بلغات البرمجة ، فالتخطيط والتحليل والتصميم والادارة هم اساس هذا المجال.",title: "نظم المعلومات", assistant: PersonModel.
                            isAssistant, banner: AssetData.isBanner, doctors:
                            PersonModel.isDoctors)));
                  },
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .stretch,
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
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            DepartmentDetailsView(
                                description: "قسم الوسائط المتعددة هو أحد الأقسام التي توجد في بعض كليات الحاسبات والذكاء الاصطناعي في مصر. يهتم هذا القسم بدراسة وتطوير التقنيات والتطبيقات المتعلقة بالمحتوى المتعدد الوسائط، مثل الصوت والفيديو والرسومات والنص والرسوم المتحركة. يتعلم الطلاب في هذا القسم كيفية تصميم وإنشاء وتحليل وتقييم ونشر المحتوى المتعدد الوسائط باستخدام أحدث الأدوات والمنصات والمعايير. يهدف إلى إعداد خريج قادر على تطبيق علوم الحاسب في إنشاء وإدارة نظم المعلومات المتعددة الوسائط.",title: "الوسائط المتعددة", assistant: PersonModel.
                            mmAssistant, banner: AssetData.mmBanner, doctors:
                            PersonModel.mmDoctors)));
                  },
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .stretch,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
