import 'package:flutter/material.dart';
import 'package:student_guide/features/departments/presentation/views/widgets/departments_view_body.dart';

class DepartmentsView extends StatelessWidget {
  const DepartmentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DepartmentsViewBody(),
      ),
    );
  }
}
