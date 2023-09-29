import 'package:flutter/material.dart';
import 'package:student_guide/features/administrative_structure/presentation/views/widgets/administrative_structure_view_body.dart';

class AdministrativeStructureView extends StatelessWidget {
  const AdministrativeStructureView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: AdministrativeStructureViewBody(),
    ));
  }
}
