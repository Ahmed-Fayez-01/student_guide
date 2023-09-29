import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/assets.dart';
import '../colors/colors.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                    fontFamily: "Cairo", color: AppColors.secondaryColor),
              ),
            ],
          ),
          const Spacer(),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_forward_ios_outlined)),
        ],
      ),
    );
  }
}
