import 'package:flutter/material.dart';
import 'package:lab_lms/Utile/app_color.dart';
import 'package:lab_lms/Utile/text_style.dart';
import 'package:lab_lms/comman_widgets/notes_icon_widget.dart';
import 'package:lab_lms/comman_widgets/prerequisite_container_widget.dart';
import 'package:lab_lms/comman_widgets/video_icon_widget.dart';

class LabWatchingScreen extends StatefulWidget {
  const LabWatchingScreen({super.key});

  @override
  State<LabWatchingScreen> createState() => _LabWatchingScreenState();
}

class _LabWatchingScreenState extends State<LabWatchingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 249, 255),
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        title: const Text('Video Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          // for video purpose...
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/robotic4.jpg',
                ),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.play_circle,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(
                    Icons.remove_red_eye,
                    color: appColor,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '1.5K',
                    style:
                        TextStyle(color: appColor, fontWeight: FontWeight.w600),
                  ),
                ]),
                const SizedBox(
                  width: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        VideoIconsWidget(style: textStyleBlue, color: appColor)
                      ],
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: [
                        NotesIconWidget(
                          color: appColor,
                          style: textStyleBlue,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          const PreRequisiteContainerWidget(
            headingText: 'Lab Prerequisite',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const PreRequisiteContainerWidget(
            headingText: 'Buy Lab Component  🛒',
          )
        ]),
      ),
    );
  }
}
