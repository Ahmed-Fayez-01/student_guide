import 'package:flutter/material.dart';
import 'package:student_guide/features/departments/presentation/views/widgets/department_details_view_body.dart';

import '../../data/person_Model.dart';

class DepartmentDetailsView extends StatelessWidget {
  const DepartmentDetailsView({super.key,required this.description,required this.title,required this.assistant,required this.banner,required this.doctors});
  final String title;
  final String description;
  final String banner;
  final List<PersonModel> doctors;
  final List<PersonModel> assistant;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: DepartmentDetailsViewBody(description: description, title: title, assistant: assistant, banner: banner, doctors: doctors,),
      ),
    );
  }
}
