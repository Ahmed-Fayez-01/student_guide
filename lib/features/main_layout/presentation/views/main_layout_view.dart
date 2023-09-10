import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:student_guide/features/home/presentation/views/widgets/drawer_view_body.dart';

import '../../../../core/utils/assets/assets.dart';
import '../../../../core/utils/colors/colors.dart';
import '../../../home/presentation/views/home_view.dart';
import '../view_models/bottom_nav_bar/bottom_navbar_cubit.dart';

class MainLayoutView extends StatelessWidget {
  MainLayoutView({super.key});

  List<Widget> bottomNavbarScreens = [
    const HomeView(),
    const SizedBox(),
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    var cubit = BottomNavbarCubit.get(context);
    return SafeArea(
      child: Scaffold(
        body:BlocBuilder<BottomNavbarCubit, BottomNavbarState>(builder: (context, state) {
          return bottomNavbarScreens[cubit.currentIndex];
        }),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  decoration:  const BoxDecoration(color: Colors.white),
                  currentAccountPicture:   const CircleAvatar(
                    backgroundImage: AssetImage(AssetData.logo),
                    backgroundColor: Colors.white,
                  ),
                  accountName:  Text('دليل الطالب',style: TextStyle(
                    color: AppColors.primaryColor
                  ),),
                  accountEmail:  const Text("كلية الحاسبات والذكاء الاصطناعي",style: TextStyle(
                    color: AppColors.secondaryColor
                  ),),
              ),
              Container (
                child:  Column(
                    children: <Widget>[
                       ListTile(
                           leading:  SvgPicture.asset(AssetData.home,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                          title:  Text("الصفحة الرئيسية",style: TextStyle(
                            color: AppColors.primaryColor
                          ),),
                          onTap:(){
                          }
                      ),
                      ListTile(
                          leading:  SvgPicture.asset(AssetData.departments,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                          title:  Text("الاقسام العلمية",style: TextStyle(
                              color: AppColors.primaryColor
                          ),),
                          onTap:(){
                            GoRouter.of(context).push("/departmentsView");
                          }
                      ),
                      ListTile(
                          leading:  SvgPicture.asset(AssetData.pyramidStructure,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                          title:  Text("الهيكل التنظيمي",style: TextStyle(
                              color: AppColors.primaryColor
                          ),),
                          onTap:(){
                          }
                      ),
                      ListTile(
                          leading:  SvgPicture.asset(AssetData.hierarchicalStructure,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                          title:  Text("الهيكل الاداري",style: TextStyle(
                              color: AppColors.primaryColor
                          ),),
                          onTap:(){
                          }
                      ),
                      ListTile(
                          leading:  SvgPicture.asset(AssetData.studentActivities,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                          title:  Text("الانشطة الطلابية",style: TextStyle(
                              color: AppColors.primaryColor
                          ),),
                          onTap:(){
                          }
                      ),
                       const Divider(),
                       ListTile(leading:  SvgPicture.asset(AssetData.settings,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                           title:  Text("الاعدادات",style: TextStyle(
                               color: AppColors.primaryColor
                           ),),
                          onTap:(){
                          }
                      ),
                       ListTile(leading:  SvgPicture.asset(AssetData.telegram,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                           title:  Text("مساعدة",style: TextStyle(
                               color: AppColors.primaryColor
                           ),),
                          onTap:(){
                          }
                      ),
                      ListTile(leading:  SvgPicture.asset(AssetData.off,width: 25.sp,height: 25.sp,color: Colors.red,),
                           title:  const Text("تسجيل الخروج",style: TextStyle(
                               color: Colors.red
                           ),),
                          onTap:(){
                          }
                      ),

                    ]
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAlias,
          height: 50.h,
          elevation: 10,
          child: BlocBuilder<BottomNavbarCubit, BottomNavbarState>(
            builder: (context, state) {
              return BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                backgroundColor: Colors.white,
                currentIndex: cubit.currentIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetData.home,
                        color: cubit.currentIndex == 0
                            ? AppColors.primaryColor
                            : Colors.grey,
                        width: 20.w,
                        height: 20.w,
                      ),
                      label: "الرئيسية"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetData.telegram,
                        color: cubit.currentIndex == 1
                            ? AppColors.primaryColor
                            : Colors.grey,
                        width: 20.w,
                        height: 20.w,
                      ),
                      label: "مساعدة"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetData.settings,
                        color: cubit.currentIndex == 2
                            ? AppColors.primaryColor
                            : Colors.grey,
                        width: 20.w,
                        height: 20.w,
                      ),
                      label: "الاعدادات"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetData.menu,
                        width: 20.w,
                        height: 20.w,
                        color: cubit.currentIndex == 3
                            ? AppColors.primaryColor
                            : Colors.grey,
                      ),
                      label: "القائمة"),
                ],
                onTap: (index) {
                  cubit.changeBottomNavbar(index);
                  if (index == 3) {
                    Scaffold.of(context).openDrawer();
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
