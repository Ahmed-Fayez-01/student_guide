import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
    const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    var cubit = BottomNavbarCubit.get(context);
    return SafeArea(
      child: Scaffold(
        body: bottomNavbarScreens[cubit.currentIndex],
        drawer: const Drawer(
          elevation: 0,
          child: DrawerViewBody(),
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
                        color: cubit.currentIndex==0? AppColors.primaryColor:Colors.grey,
                        width: 20.w,
                        height: 20.w,
                      ),
                      label: "الرئيسية"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetData.telegram,
                        color: cubit.currentIndex==1? AppColors.primaryColor:Colors.grey,
                        width: 20.w,
                        height: 20.w,
                      ),
                      label: "مساعدة"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetData.settings,
                        color: cubit.currentIndex==2? AppColors.primaryColor:Colors.grey,
                        width: 20.w,
                        height: 20.w,
                      ),
                      label: "الاعدادات"),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        AssetData.menu,
                        width: 20.w,
                        height: 20.w,
                        color: cubit.currentIndex==3? AppColors.primaryColor:Colors.grey,
                      ),
                      label: "القائمة"),
                ],
                onTap: (index) {
                  cubit.changeBottomNavbar(index);
                  if(index==3)
                    {
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
