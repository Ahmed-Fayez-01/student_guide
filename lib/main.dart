import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/roots/app_router.dart';
import 'core/utils/theme/app_theme.dart';
import 'features/main_layout/presentation/view_models/bottom_nav_bar/bottom_navbar_cubit.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(const Hukamuh());
}

class Hukamuh extends StatelessWidget {
  const Hukamuh({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      path: "lib/core/language",
      supportedLocales: const [Locale("en"), Locale("ar")],
      saveLocale: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => BottomNavbarCubit()),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 640),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp.router(
            title: "دليل الطالب",
            theme: themeDataLight,
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!,
              );
            },
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: const Locale("ar"),
          ),
        ),
      ),
    );
  }
}
