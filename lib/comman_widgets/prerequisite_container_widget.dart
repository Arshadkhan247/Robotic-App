import 'package:flutter/material.dart';
import 'package:lab_lms/Utile/text_style.dart';

class PreRequisiteContainerWidget extends StatelessWidget {
  const PreRequisiteContainerWidget({
    required this.headingText,
    super.key,
  });
  final String headingText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.amberAccent,
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromARGB(255, 4, 75, 137), width: 3),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: const Color.fromARGB(
            255,
            186,
            187,
            189,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    headingText,
                    style: textStyleBlue,
                  ),
                  const SizedBox(
                    width: 8,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text('    🔵 Wires', style: textStyle),
              const SizedBox(
                height: 6,
              ),
              Text('    🔵 Node MCU', style: textStyle),
              const SizedBox(
                height: 6,
              ),
              Text('    🔵 BreadBoard', style: textStyle),
            ],
          ),
        ),
      ),
    );
  }
}
