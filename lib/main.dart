import 'package:finance_app/core/routing/router_generation_config.dart';
import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:finance_app/core/utilities/app_theme.dart';
import 'package:finance_app/core/widgets/custom_button_widget.dart';
import 'package:finance_app/core/widgets/custom_text_field_widget.dart';
import 'package:finance_app/features/onboarding/presentation/view/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

main() {
  runApp( const FinanceApp());
}

class FinanceApp extends StatefulWidget {
   const FinanceApp({super.key});

  @override
  State<FinanceApp> createState() => _FinanceAppState();
}

class _FinanceAppState extends State<FinanceApp> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: AppThemes.lightTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: RouterGenerationConfig.goRouter,
        );
      },
    );
  }
}
