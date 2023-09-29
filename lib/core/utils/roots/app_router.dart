
import 'package:go_router/go_router.dart';
import 'package:student_guide/features/academic_regulations/presentation/views/academic_regulations_view.dart';
import 'package:student_guide/features/administrative_structure/presentation/views/administrative_structure_view.dart';
import 'package:student_guide/features/departments/presentation/views/department_details_view.dart';
import 'package:student_guide/features/departments/presentation/views/departments_view.dart';
import 'package:student_guide/features/main_layout/presentation/views/main_layout_view.dart';
import 'package:student_guide/features/organizational_chart/presentation/views/organizational_chart_view.dart';
import 'package:student_guide/features/our_team/presentation/views/our_team_view.dart';
import 'package:student_guide/features/student_services/presentation/views/student_services_view.dart';
import 'package:student_guide/features/study_plan/presentation/views/study_plan_view.dart';

import '../../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/mainLayoutView",
      builder: (context, state) => MainLayoutView(),
    ),
    GoRoute(
      path: "/departmentsView",
      builder: (context, state) => const DepartmentsView(),
    ),
    GoRoute(
      path: "/organizationalChartView",
      builder: (context, state) => const OrganizationalChartView(),
    ),
    GoRoute(
      path: "/studyPlanView",
      builder: (context, state) => const StudyPlanView(),
    ),
    GoRoute(
      path: "/academicRegulationsView",
      builder: (context, state) => const AcademicRegulationsView(),
    ),
    GoRoute(
      path: "/administrativeStructureView",
      builder: (context, state) => const AdministrativeStructureView(),
    ),
    GoRoute(
      path: "/studentServicesView",
      builder: (context, state) => const StudentServicesView(),
    ),
    GoRoute(
      path: "/ourTeamView",
      builder: (context, state) => const OurTeamView(),
    ),

  ]);
}
