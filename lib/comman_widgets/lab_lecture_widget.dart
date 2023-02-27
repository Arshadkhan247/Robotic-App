// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lab_lms/Utile/app_color.dart';

import 'package:lab_lms/Utile/text_style.dart';
import 'package:lab_lms/comman_widgets/notes_icon_widget.dart';

class LabLectureWidget extends StatelessWidget {
  LabLectureWidget({
    required this.labNo,
    required this.labDetails,
    required this.onTap,
    required this.color,
    super.key,
  });
  final String labNo;
  final String labDetails;
  final VoidCallback onTap;
  Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          elevation: 20,
          child: Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 95, 127, 202),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        labNo,
                        style: textStyle,
                      ),
                      Row(
                        children: [
                          Text(
                            'Video',
                            style: textStyle,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.cloud_download_rounded,
                            color: color,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        labDetails,
                        style: textStyle,
                      ),
                      NotesIconWidget(
                        color: backgroundColor,
                        style: textStyle,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
