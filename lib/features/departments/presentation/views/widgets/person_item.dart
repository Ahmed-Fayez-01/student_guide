import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_guide/core/utils/assets/assets.dart';
import 'package:student_guide/features/departments/data/person_Model.dart';
class PersonItem extends StatelessWidget {
  const PersonItem({super.key,required this.personData});
   final PersonModel personData;

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 90.w,
            height: 120.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.sp),
              child: Image.asset(
                personData.img!=null ? personData.img! : AssetData.unkown,
                fit: BoxFit.cover,
              ),
            )),
        const SizedBox(
          width: 10,
        ),
         Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                personData.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Color(0xff647a8f),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                personData.department,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xff9eadba),
                  fontSize: 16,
                ),
              ),
              Text(
                personData.specialist,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xff9eadba),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
