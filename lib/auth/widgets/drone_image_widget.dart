import 'package:flutter/material.dart';

class DroneImageWidget extends StatelessWidget {
  const DroneImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      height: 250,
      color: Colors.black54,
      image: AssetImage(
        'assets/drone.png',
      ),
    );
  }
}
