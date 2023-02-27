import 'package:flutter/material.dart';

class GoogleAndFacebookWidget extends StatelessWidget {
  const GoogleAndFacebookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: const Text(
            'Google',
            style: TextStyle(
              color: Color.fromARGB(255, 40, 120, 241),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Text(
          '    |     ',
          style: TextStyle(
              color: Color.fromARGB(255, 40, 120, 241),
              fontWeight: FontWeight.bold),
        ),
        const Text(
          'Facebook',
          style: TextStyle(
            color: Color.fromARGB(255, 40, 120, 241),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
