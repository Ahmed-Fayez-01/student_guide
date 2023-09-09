import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'drawer_taps.dart';


class DrawerViewBody extends StatelessWidget {
  const DrawerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Padding(
        padding:  EdgeInsets.all(20.0.sp),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerTaps(txt: 'الصفحه الرئيسيه',
            tap: (){},),
            DrawerTaps(txt: 'التقييم ',
            tap: (){},),
            DrawerTaps(txt: 'عن الحوكمه',
            tap: (){},),
            DrawerTaps(txt: 'الصفحه الشخصيه',
            tap: (){},),
            DrawerTaps(txt: 'الدعم الفني',
            tap: (){
              GoRouter.of(context).push("/technicalSupportView");
            },),
            DrawerTaps(txt: 'اتصل بنا',
            tap: (){},),

          ],
        ),
      ),
    );
  }
}


