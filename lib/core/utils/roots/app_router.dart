
import 'package:go_router/go_router.dart';
import 'package:student_guide/features/departments/presentation/views/departments_view.dart';
import 'package:student_guide/features/main_layout/presentation/views/main_layout_view.dart';

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

  ]);
}
