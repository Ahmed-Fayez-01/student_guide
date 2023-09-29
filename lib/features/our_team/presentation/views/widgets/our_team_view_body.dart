import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:student_guide/core/utils/assets/assets.dart';
import 'package:student_guide/core/utils/colors/colors.dart';

import '../../../../../core/utils/shared_componanets/default_app_bar.dart';
import '../../../../../core/utils/shared_componanets/default_main_title.dart';

class OurTeamViewBody extends StatelessWidget {
  const OurTeamViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        const DefaultAppBar(),
        const DefaultMainTitle(title: "فريق الاعداد"),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110.w,
                      height: 120.h,
                      decoration:  BoxDecoration(
                        color: const Color(0xffe5e3b7),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.sp),child: Image.asset(AssetData.fayez,fit: BoxFit.cover,)),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("أحمد",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp
                        ),),
                         Text("فايز عبدالفتاح",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                         Text("Flutter Developer",style: TextStyle(
                            fontSize: 16.sp,
                           color: AppColors.secondaryColor
                        ),),
                        // Row(children: [
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.facebook,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.telegram,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.whatsapp,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        // ],)
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110.w,
                      height: 120.h,
                      decoration:  BoxDecoration(
                        color: const Color(0xffd4a3aa),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.sp),child: Image.asset(AssetData.sultan,fit: BoxFit.cover,)),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("أحمد",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                        Text("محمود سلطان",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                        Text("Flutter Developer",style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.secondaryColor
                        ),),
                        // Row(children: [
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.facebook,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.telegram,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.whatsapp,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        // ],)
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110.w,
                      height: 120.h,
                      decoration:  BoxDecoration(
                        color: const Color(0xff797ba2),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.sp),child: Image.asset(AssetData.mai,fit: BoxFit.cover,)),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("مي",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                        Text("علاء علي",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                        Text("Flutter Developer",style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.secondaryColor,
                        ),),
                        // Row(children: [
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.facebook,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.telegram,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.whatsapp,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        // ],)
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110.w,
                      height: 120.h,
                      decoration:  BoxDecoration(
                        color: const Color(0xff89abcd),
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20.sp),child: Image.asset(AssetData.saad,fit: BoxFit.cover,)),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("مصطفي",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                        Text("سعد جنيدي",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),
                        Text("Flutter Developer",style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.secondaryColor
                        ),),
                        // Row(children: [
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.facebook,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.telegram,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        //   IconButton(onPressed: (){}, icon: SvgPicture.asset(AssetData.whatsapp,color: Colors.grey,width: 25.sp,height: 25.sp,)),
                        // ],)
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
