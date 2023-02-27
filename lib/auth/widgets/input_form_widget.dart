// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class InputFormWidget extends StatelessWidget {
  InputFormWidget({
    this.hintText,
    required this.obscureText,
    required this.controller,
    required this.icon,
    required this.keyboardType,
    required this.validator,
    this.label,
    super.key,
  });
  final hintText;
  bool obscureText;
  final controller;
  Widget icon;
  final keyboardType;
  final label;
  final validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      validator: validator,
      cursorHeight: 30,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        disabledBorder: InputBorder.none,
        filled: true,
        fillColor: const Color.fromARGB(255, 40, 120, 241),
        label: label,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: icon,
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
    );
  }
}
