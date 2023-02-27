// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AccountAndTextWidget extends StatelessWidget {
  const AccountAndTextWidget({
    required this.accText,
    required this.navText,
    required this.onTap,
    super.key,
  });

  final accText;
  final navText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          accText,
          style: const TextStyle(
            color: Color.fromARGB(255, 40, 120, 241),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            navText,
            style: const TextStyle(
              color: Color.fromARGB(255, 40, 120, 241),
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
