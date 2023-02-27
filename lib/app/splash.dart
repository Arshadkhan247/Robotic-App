import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lab_lms/app/routers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).popAndPushNamed(AppRouting.signUp);
    });
    // TODO: implement initState for Future delay.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text.rich(TextSpan(
            text: 'Rebotic',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
            children: <InlineSpan>[
              TextSpan(
                text: ' App',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ])),
      ),
    );
  }
}
