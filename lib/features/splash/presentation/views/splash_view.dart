import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/assets/assets.dart';
import '../../../../core/utils/colors/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3600), () {
     GoRouter.of(context).pushReplacement('/mainLayoutView');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body:   Stack(
        children: [
          Image.asset(
            AssetData.mainPoster,
            height:MediaQuery.of(context).size.height,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height:MediaQuery.of(context).size.height,
            width: double.infinity,
            color: const Color.fromARGB(100, 22, 44, 33),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AssetData.universityLogo,width: 100.sp,height: 100.sp,),
                        const Text(
                          "جامعة بني سويف",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Cairo"),
                        ),
                        const Text(
                          "كلية الحاسبات والذكاء الأصطناعي",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Cairo"),
                        ),
                      ],
                    ),
                  ),

                  const Text(
                    "دليل الطالب",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Cairo"),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  const CircularProgressIndicator(color: Colors.white,),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
