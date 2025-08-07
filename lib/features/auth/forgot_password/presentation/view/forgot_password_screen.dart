import 'package:finance_app/features/auth/forgot_password/presentation/view/widget/forgot_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotBody(),
    );
  }
}
