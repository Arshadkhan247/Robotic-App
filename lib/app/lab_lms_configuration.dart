// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lab_lms/app/routers.dart';
import 'package:lab_lms/app/splash.dart';

class LabLMS extends StatelessWidget {
  const LabLMS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        return AppRouting.onGenerate(settings);
      },
      home: const SplashScreen(),
    );
  }
}
