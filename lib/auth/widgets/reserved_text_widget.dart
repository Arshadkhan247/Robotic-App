import 'package:flutter/material.dart';

class ReservedTextWidget extends StatelessWidget {
  const ReservedTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'All Rights Reserved By Cusit IT & Robotics Society',
      style: TextStyle(
          fontSize: 12,
          color: Color.fromARGB(
            255,
            40,
            120,
            241,
          ),
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    );
  }
}
