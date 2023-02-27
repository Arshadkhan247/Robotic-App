import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_lms/Utile/app_color.dart';
import 'package:lab_lms/app/routers.dart';
import 'package:lab_lms/comman_widgets/lab_lecture_widget.dart';

class ReadingScreen extends StatelessWidget {
  const ReadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 249, 255),
        appBar: AppBar(
          elevation: 5,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 95, 127, 202),
          title: Text(
            'Bigginner',
            style: GoogleFonts.aBeeZee(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Objectives:',
                  style: TextStyle(
                      color: Color.fromARGB(255, 95, 127, 202),
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline),
                ),
                const Text(
                  'The goal of robotics is to design machines that can help and assist humans.Robotics integrates fields of mechanical engineering, electrical engineering, information engineering, mechatronics, electronics, bioengineering, computer engineering, control engineering, software engineering, mathematics, etc.',
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          LabLectureWidget(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRouting.labwatchingscreen);
                            },
                            labNo: 'Lab # 1',
                            labDetails: 'Introduction To Level 1',
                            color: backgroundColor,
                          ),
                          LabLectureWidget(
                            color: backgroundColor,
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRouting.labwatchingscreen);
                            },
                            labNo: 'Lab # 2',
                            labDetails: 'Light Toggle',
                          ),
                          LabLectureWidget(
                            color: backgroundColor,
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRouting.labwatchingscreen);
                            },
                            labNo: 'Lab # 3',
                            labDetails: 'Remote Configuration',
                          ),
                          LabLectureWidget(
                            color: backgroundColor,
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRouting.labwatchingscreen);
                            },
                            labNo: 'Lab # 4',
                            labDetails: 'Board Setup',
                          ),
                          LabLectureWidget(
                            color: backgroundColor,
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRouting.labwatchingscreen);
                            },
                            labNo: 'Lab # 5',
                            labDetails: 'App For Circuit',
                          ),
                          LabLectureWidget(
                            color: backgroundColor,
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRouting.labwatchingscreen);
                            },
                            labNo: 'Lab # 6',
                            labDetails: 'Usage Of Application',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ]),
        ));
  }
}
