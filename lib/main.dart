import 'package:doctor/core/routing/router_generation.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Doctor App',
          theme: ThemeData(
            primaryColor: AppColors.primaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          routerConfig: RouterGeneration.goRouter,
        );
      },
    );
  }
}
