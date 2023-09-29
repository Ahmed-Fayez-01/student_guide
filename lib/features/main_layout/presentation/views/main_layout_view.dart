import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:student_guide/features/main_layout/presentation/views/widgets/default_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/assets/assets.dart';
import '../../../../core/utils/colors/colors.dart';
import '../../../home/presentation/views/home_view.dart';
import '../view_models/bottom_nav_bar/bottom_navbar_cubit.dart';

class MainLayoutView extends StatelessWidget {
  MainLayoutView({super.key});

  List<Widget> bottomNavbarScreens = [
    const HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    var cubit = BottomNavbarCubit.get(context);
    void launchTelegram() async{

      String url =
          "https://t.me/+A0qVWCm3zoliOWU0";
      print("launchingUrl: $url");
      if (await canLaunch(url)) {
        var url = Uri.parse("https://t.me/+A0qVWCm3zoliOWU0");
        await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        );
        // await launch(url,
        //     mode: LaunchMode.externalApplication);
      }

    }
    return SafeArea(
      child: WillPopScope(
        onWillPop: ()async{
          showDialog(
              context: context,
              builder: (_) =>  AlertDialog(
                title: const Text('الخروج من البرنامج',style: TextStyle(
                    fontSize: 16
                ),),
                content: const Text('هل انت متأكد من الخروج من البرنامج؟',style: TextStyle(
                    fontSize: 14
                ),),
                actions: [
                  Row(
                    children: [
                      Expanded(child: DefaultButton(onPress: (){
                        exit(0);
                      }, text: "الخروج",height: 12,borderRadius: 0,)),
                      Expanded(child: DefaultButton(onPress: (){
                        Navigator.pop(context);
                      }, text: "الغاء",borderRadius: 0,backgroundColor: Colors.grey[300],textColor: AppColors.primaryColor,height: 12)),
                    ],
                  ),

                ],
              )
          );
          return false;
        },
        child: Scaffold(
          body:BlocBuilder<BottomNavbarCubit, BottomNavbarState>(builder: (context, state) {
            return bottomNavbarScreens[cubit.currentIndex];
          }),
          drawer: Drawer(
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
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
                              GoRouter.of(context).go("/mainLayoutView");
                            }
                        ),
                        ListTile(
                            leading:  SvgPicture.asset(AssetData.pyramidStructure,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                            title:  Text("الهيكل التنظيمي",style: TextStyle(
                                color: AppColors.primaryColor
                            ),),
                            onTap:(){
                              GoRouter.of(context).push("/organizationalChartView");
                            }
                        ),
                        ListTile(
                            leading:  SvgPicture.asset(AssetData.hierarchicalStructure,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                            title:  Text("الهيكل الأداري",style: TextStyle(
                                color: AppColors.primaryColor
                            ),),
                            onTap:(){
                              GoRouter.of(context).push("/administrativeStructureView");
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
                            leading:  SvgPicture.asset(AssetData.schoolSystem,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                            title:  Text("الائحة الدراسية",style: TextStyle(
                                color: AppColors.primaryColor
                            ),),
                            onTap:(){
                              GoRouter.of(context).push("/academicRegulationsView");
                            }
                        ),
                        ListTile(
                            leading:  SvgPicture.asset(AssetData.studyPlan,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                            title:  Text("المواد الدراسية",style: TextStyle(
                                color: AppColors.primaryColor
                            ),),
                            onTap:(){
                              GoRouter.of(context).push("/studyPlanView");
                            }
                        ),
                        ListTile(
                            leading:  SvgPicture.asset(AssetData.studentActivities,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                            title:  Text("الانشطة الطلابية",style: TextStyle(
                                color: AppColors.primaryColor
                            ),),
                            onTap:(){
                              GoRouter.of(context).push("/studentServicesView");
                            }
                        ),
                        ListTile(
                            leading:  SvgPicture.asset(AssetData.team,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                            title:  Text("فريق الاعداد",style: TextStyle(
                                color: AppColors.primaryColor
                            ),),
                            onTap:(){
                              GoRouter.of(context).push("/ourTeamView");
                            }
                        ),
                         const Divider(),
                         ListTile(leading:  SvgPicture.asset(AssetData.telegram,width: 25.sp,height: 25.sp,color: AppColors.secondaryColor,),
                             title:  Text("مساعدة",style: TextStyle(
                                 color: AppColors.primaryColor
                             ),),
                            onTap:(){
                           print("ffdffdfdfd");
                           launchTelegram();
                            }
                        ),
                        ListTile(leading:  SvgPicture.asset(AssetData.off,width: 25.sp,height: 25.sp,color: Colors.red,),
                             title:  const Text("تسجيل الخروج",style: TextStyle(
                                 color: Colors.red
                             ),),
                            onTap:(){
                              showDialog(
                                  context: context,
                                  builder: (_) =>  AlertDialog(
                                    title: const Text('الخروج من البرنامج',style: TextStyle(
                                        fontSize: 16
                                    ),),
                                    content: const Text('هل انت متأكد من الخروج من البرنامج؟',style: TextStyle(
                                        fontSize: 14
                                    ),),
                                    actions: [
                                      Row(
                                        children: [
                                          Expanded(child: DefaultButton(onPress: (){
                                            exit(0);
                                          }, text: "الخروج",height: 12,borderRadius: 0,)),
                                          Expanded(child: DefaultButton(onPress: (){
                                            Navigator.pop(context);
                                          }, text: "الغاء",borderRadius: 0,backgroundColor: Colors.grey[300],textColor: AppColors.primaryColor,height: 12)),
                                        ],
                                      ),

                                    ],
                                  )
                              );
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
                          AssetData.menu,
                          width: 20.w,
                          height: 20.w,
                          color: cubit.currentIndex == 1
                              ? AppColors.primaryColor
                              : Colors.grey,
                        ),
                        label: "القائمة"),
                  ],
                  onTap: (index) {
                    cubit.changeBottomNavbar(index);
                    if (index == 1) {
                      Scaffold.of(context).openDrawer();
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
