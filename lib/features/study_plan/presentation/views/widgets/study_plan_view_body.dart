import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_guide/features/study_plan/data/material_model.dart';
import 'package:student_guide/features/study_plan/presentation/view_models/study_plan_cubit/study_plan_cubit.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/shared_componanets/default_app_bar.dart';
import '../../../../../core/utils/shared_componanets/default_main_title.dart';

class StudyPlanViewBody extends StatelessWidget {
  StudyPlanViewBody({super.key});

  final List<String> titles = [
    "السنة الدراسية الاولي",
    "السنة الدراسية الثانية",
    "السنة الدراسية الثالثة",
    "السنة الدراسية الرابعة"
  ];

  @override
  Widget build(BuildContext context) {
    AppConstants.selectedQuestionNow = null;
    final List<Widget> widgets = [
      Column(
        children: [
          const Text(
            "الفصل الدراسي الأول",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الاول",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
              color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
              itemCount: MaterialModel.firstYearFirstSemester.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
            return Container(
              padding: const EdgeInsets.all(10),
              decoration:  BoxDecoration(
                border: Border.all(color: AppColors.primaryColor.shade200,)
              ),
              child:  Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(MaterialModel.firstYearFirstSemester[index].code!,textAlign: TextAlign.center),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(MaterialModel.firstYearFirstSemester[index].materialName!,textAlign: TextAlign.center),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(MaterialModel.firstYearFirstSemester[index].credit!,textAlign: TextAlign.center,),
                  ),
                ],
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 5,);
          },),
          SizedBox(height: 20.h,),
          const Text(
            "الفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: MaterialModel.firstYearSecondSemester.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor.shade200,)
                ),
                child:  Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.firstYearSecondSemester[index].code!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(MaterialModel.firstYearSecondSemester[index].materialName!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.firstYearSecondSemester[index].credit!,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 5,);
          },)
        ],
      ),
      Column(
        children: [
          const Text(
            "الفصل الدراسي الأول",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الاول",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: MaterialModel.secondYearFirstSemester.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor.shade200,)
                ),
                child:  Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.secondYearFirstSemester[index].code!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(MaterialModel.secondYearFirstSemester[index].materialName!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.secondYearFirstSemester[index].credit!,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 5,);
          },),
          SizedBox(height: 20.h,),
          const Text(
            "الفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: MaterialModel.secondYearSecondSemester.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor.shade200,)
                ),
                child:  Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.secondYearSecondSemester[index].code!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(MaterialModel.secondYearSecondSemester[index].materialName!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.secondYearSecondSemester[index].credit!,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 5,);
          },)
        ],
      ),
      Column(
        children: [
          const Text(
            "الفصل الدراسي الأول",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الاول",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: MaterialModel.thirdYearFirstSemester.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor.shade200,)
                ),
                child:  Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.thirdYearFirstSemester[index].code!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(MaterialModel.thirdYearFirstSemester[index].materialName!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.thirdYearFirstSemester[index].credit!,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 5,);
          },),
          SizedBox(height: 20.h,),
          const Text(
            "الفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: MaterialModel.thirdYearSecondSemester.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor.shade200,)
                ),
                child:  Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.thirdYearSecondSemester[index].code!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(MaterialModel.thirdYearSecondSemester[index].materialName!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.thirdYearSecondSemester[index].credit!,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 5,);
          },)
        ],
      ),
      Column(
        children: [
          const Text(
            "الفصل الدراسي الأول",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الاول",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: MaterialModel.forthYearFirstSemester.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor.shade200,)
                ),
                child:  Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.forthYearFirstSemester[index].code!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(MaterialModel.forthYearFirstSemester[index].materialName!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.forthYearFirstSemester[index].credit!,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 5,);
          },),
          SizedBox(height: 20.h,),
          const Text(
            "الفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 25.w,
            height: 2,
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "قائمة المقررات للفصل الدراسي الثاني",
            style: TextStyle(
              fontFamily: "Cairo",
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration:  BoxDecoration(
                color: Colors.grey[200]
            ),
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("كود المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 3,
                  child: Text("اسم المادة",textAlign: TextAlign.center,),
                ),
                Expanded(
                  flex: 1,
                  child: Text("عدد الساعات",textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            itemCount: MaterialModel.forthYearSecondSemester.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor.shade200,)
                ),
                child:  Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.forthYearSecondSemester[index].code!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(MaterialModel.forthYearSecondSemester[index].materialName!,textAlign: TextAlign.center),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(MaterialModel.forthYearSecondSemester[index].credit!,textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 5,);
          },)
        ],
      ),
    ];
    return Column(
      children: [
        const DefaultAppBar(),
        const DefaultMainTitle(title: "نموذج خطة دراسية"),
        SizedBox(
          height: 10.h,
        ),
        BlocBuilder<StudyPlanCubit, StudyPlanState>(
          builder: (context, state) {
            StudyPlanCubit cubit = StudyPlanCubit.get(context);
            return Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                key: Key(
                    'builder ${AppConstants.selectedQuestionNow.toString()}'),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: ExpansionTileCard(
                    key: Key(index.toString()),
                    initiallyExpanded:
                        AppConstants.selectedQuestionNow == index,
                    onExpansionChanged: (val) {
                      cubit.switchQuestionColor(val, index);
                      print(AppConstants.selectedQuestionNow);
                    },
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
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
