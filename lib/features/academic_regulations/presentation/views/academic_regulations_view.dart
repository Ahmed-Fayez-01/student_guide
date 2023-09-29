import 'package:flutter/material.dart';
import 'package:student_guide/features/academic_regulations/presentation/views/widgets/academic_regulations_view_body.dart';

class AcademicRegulationsView extends StatelessWidget {
  const AcademicRegulationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:AcademicRegulationsViewBody() ,
      ),
    );
  }
}
