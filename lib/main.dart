import 'package:finance_app/core/utilities/app_colors.dart';
import 'package:finance_app/core/utilities/app_texts.dart';
import 'package:finance_app/core/utilities/app_theme.dart';
import 'package:finance_app/core/widgets/custom_button_widget.dart';
import 'package:finance_app/core/widgets/custom_text_field_widget.dart';
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
        return MaterialApp(
          theme: AppThemes.lightTheme,
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              CustomTextFieldWidget(
                hintText: "Password",
                obscureText: obscureText,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                    Icons.visibility,
                    color: obscureText? AppColors.grey: AppColors.primaryColor,
                  ),
                ),
              ),
              CustomTextFieldWidget(hintText: "Email")
            ],
          )
        ),
      ),
    );
  }
}
