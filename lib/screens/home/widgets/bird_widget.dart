import 'package:flutter/material.dart';

import 'package:flappy_bird/generated/assets.dart';

class BirdWidget extends StatelessWidget {
  final double birdY;
  final double birdHeight; // normal double value for width
  final double birdWidth; // out of 2, 2 being the entire height of the screen

  const BirdWidget({
    super.key,
    required this.birdY,
    required this.birdHeight,
    required this.birdWidth,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment(0, (2 * birdY + birdHeight) / (2 - birdHeight)),
      child: Image.asset(
        Assets.imagesBird,
        width: mq.height * birdWidth / 2,
        height: mq.height * 3 / 4 * birdHeight / 2,
        fit: BoxFit.fill,
      ),
    );
  }
}
