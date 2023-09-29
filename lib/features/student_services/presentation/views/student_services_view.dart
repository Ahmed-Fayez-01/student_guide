import 'package:flutter/material.dart';
import 'package:student_guide/features/student_services/presentation/views/widgets/student_services_view_body.dart';

class StudentServicesView extends StatelessWidget {
  const StudentServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: StudentServicesViewBody(),
      ),
    );
  }
}
