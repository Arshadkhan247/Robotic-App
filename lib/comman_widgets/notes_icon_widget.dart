// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class NotesIconWidget extends StatelessWidget {
  NotesIconWidget({
    required this.color,
    required this.style,
    super.key,
  });
  Color color;
  var style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: style,
        ),
        const SizedBox(
          width: 8,
        ),
        Icon(Icons.file_download_outlined, color: color),
      ],
    );
  }
}
