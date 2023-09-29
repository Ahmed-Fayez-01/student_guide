import 'package:flutter/material.dart';
import 'package:student_guide/features/organizational_chart/presentation/views/widgets/organizational_chart_view_body.dart';

class OrganizationalChartView extends StatelessWidget {
  const OrganizationalChartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OrganizationalChartViewBody(),

      ),
    );
  }
}
