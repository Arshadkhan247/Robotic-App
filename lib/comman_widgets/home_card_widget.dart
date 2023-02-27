// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:lab_lms/Utile/decoration_widget.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    required this.img,
    required this.levelText,
    required this.opacity,
    this.onTap,
    super.key,
  });
  final img;
  final levelText;
  final opacity;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 20,
        shadowColor: const Color.fromARGB(255, 60, 88, 71),
        child: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.black45,
            image: DecorationImage(
              opacity: opacity,
              fit: BoxFit.cover,
              image: AssetImage(
                img,
              ),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 130,
                      decoration: decorationWidget,
                      child: const Text(
                        '6 Free Labs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white70),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 130,
                      decoration: decorationWidget,
                      child: const Text(
                        '130 Paid Labs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white70),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 200,
                  decoration: decorationWidget,
                  child: Text(
                    levelText,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
