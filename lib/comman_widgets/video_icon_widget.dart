// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

class VideoIconsWidget extends StatelessWidget {
  VideoIconsWidget({
    required this.style,
    required this.color,
    super.key,
  });
  var style;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Video',
          style: style,
        ),
        const SizedBox(
          width: 10,
        ),
        Icon(
          Icons.cloud_download_rounded,
          color: color,
        ),
      ],
    );
  }
}
