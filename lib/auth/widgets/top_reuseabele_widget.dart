// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

/// this widget is
/// for sign and
/// login top three image

class TopImageWidget extends StatelessWidget {
  const TopImageWidget({
    required this.imag,
    required this.height,
    super.key,
  });
  final imag;
  final height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 90,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade500,
            width: 4,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          )),
      child: Image(
        height: 10,
        color: Colors.black54,
        image: AssetImage(imag),
      ),
    );
  }
}
