// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SignAndLoginButtonWidget extends StatelessWidget {
  SignAndLoginButtonWidget({
    required this.nameOfButton,
    super.key,
  });

  String nameOfButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 100,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 40, 120, 241),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Text(
        nameOfButton,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
