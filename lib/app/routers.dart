import 'package:flutter/material.dart';
import 'package:lab_lms/Screens/dashboard.dart';
import 'package:lab_lms/Screens/lab_watching_screen.dart';
import 'package:lab_lms/Screens/reading_screen.dart';
import 'package:lab_lms/app/splash.dart';
import 'package:lab_lms/auth/auth_screens/login.dart';
import 'package:lab_lms/auth/auth_screens/sign_up.dart';

class AppRouting {
  static const String splash = '/';
  static const String signUp = '/sign_up';
  static const String login = '/login';
  static const String dashboard = '/dashboard';
  static const String readingscreen = '/reading_screen';
  static const String labwatchingscreen = '/lab_watching_screen';

  static Route<dynamic>? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case signUp:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
          settings: settings,
        );
      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
          settings: settings,
        );
      case dashboard:
        return MaterialPageRoute(
          builder: (context) => const DashBoardScreen(),
          settings: settings,
        );
      case readingscreen:
        return MaterialPageRoute(
          builder: (context) => const ReadingScreen(),
          settings: settings,
        );
      case labwatchingscreen:
        return MaterialPageRoute(
          builder: (context) => const LabWatchingScreen(),
          settings: settings,
        );
    }
    return null;
  }
}
