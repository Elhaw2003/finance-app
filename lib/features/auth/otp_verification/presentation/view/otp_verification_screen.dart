import 'package:finance_app/features/auth/otp_verification/presentation/view/widgets/otp_verification_body.dart';
import 'package:flutter/material.dart';


class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: OtpVerificationBody(),
    );
  }
}
