import 'package:flutter/material.dart';
import 'package:student_guide/features/study_plan/presentation/views/widgets/study_plan_view_body.dart';

class StudyPlanView extends StatelessWidget {
  const StudyPlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StudyPlanViewBody(),
      ),
    );
  }
}
