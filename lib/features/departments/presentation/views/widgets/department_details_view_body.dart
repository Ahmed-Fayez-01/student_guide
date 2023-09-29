import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_guide/core/utils/assets/assets.dart';
import 'package:student_guide/core/utils/constants.dart';
import 'package:student_guide/core/utils/shared_componanets/default_app_bar.dart';
import 'package:student_guide/core/utils/shared_componanets/default_main_title.dart';
import 'package:student_guide/features/departments/data/person_Model.dart';
import 'package:student_guide/features/departments/presentation/view_models/department_cubit/department_cubit.dart';
import 'package:student_guide/features/departments/presentation/views/widgets/person_item.dart';

import '../../../../../core/utils/colors/colors.dart';

class DepartmentDetailsViewBody extends StatelessWidget {
  DepartmentDetailsViewBody({super.key,required this.description,required this.title,required this.assistant,required this.banner,required this.doctors});
  final String title;
  final String description;
  final String banner;
  final List<PersonModel> doctors;
  final List<PersonModel> assistant;

  final List<String> titles = [
    "عن القسم",
    "رئيس القسم",
    "اعضاء هيئة التدريس",
    "اعضاء الهيئة المعاونة"
  ];

  @override
  Widget build(BuildContext context) {
    AppConstants.selectedQuestionNow=null;
    final List<Widget> widgets = [
      Column(
        children: [
          Image.asset(
            banner,
            width: double.infinity,
            height: 130,
            fit: BoxFit.cover,
          ),
          Text(
            description,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
      PersonItem(
        personData: doctors[0],
      ),
      ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return PersonItem(personData: doctors[index + 1]);
        },
        itemCount: doctors.length - 1,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
      ),
      ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return PersonItem(personData: assistant[index]);
        },
        itemCount: assistant.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
      ),
    ];
    return Column(
      children: [
        const DefaultAppBar(),
        DefaultMainTitle(title: "قسم $title"),
        SizedBox(
          height: 20.h,
        ),
        BlocBuilder<DepartmentCubit, DepartmentState>(
          builder: (context, state) {
            DepartmentCubit cubit = DepartmentCubit.get(context);
            return Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                key: Key(
                    'builder ${AppConstants.selectedQuestionNow.toString()}'),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
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
