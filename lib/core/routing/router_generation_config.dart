import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/features/auth/forgot_password/presentation/view/forgot_password_screen.dart';
import 'package:finance_app/features/auth/login/presentation/view/login_screen.dart';
import 'package:finance_app/features/auth/otp_verification/presentation/view/otp_verification_screen.dart';
import 'package:finance_app/features/auth/register/presentation/view/register_screen.dart';
import 'package:finance_app/features/main/presentation/view/main_screen.dart';
import 'package:finance_app/features/onboarding/presentation/view/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
     initialLocation: AppRoutes.onboardingScreen,
      routes: [
        GoRoute(
            path: AppRoutes.onboardingScreen,
            name: AppRoutes.onboardingScreen,
            builder: (context,state)=>const OnboardingScreen()
        ),
        GoRoute(
          path: AppRoutes.loginScreen,
          name: AppRoutes.loginScreen,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: AppRoutes.registerScreen,
          name: AppRoutes.registerScreen,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
            path: AppRoutes.forgotScreen,
            name: AppRoutes.forgotScreen,
            builder: (context, state) => const ForgotPasswordScreen(),
        ),
        GoRoute(
            path: AppRoutes.otpVerifyScreen,
            name: AppRoutes.otpVerifyScreen,
            builder: (context, state) => const OtpVerificationScreen(),
        ),
        GoRoute(
            path: AppRoutes.mainScreen,
            name: AppRoutes.mainScreen,
            builder: (context, state) => const MainScreen(),
        ),
      ]
  );
}