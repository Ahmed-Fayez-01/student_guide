import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/assets.dart';

class DefaultMainTitle extends StatelessWidget {
  const DefaultMainTitle({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(
          AssetData.mainPoster,
          height: 60.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 60.h,
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
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 26,
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
    );
  }
}
