import 'package:flutter/material.dart';

class BarrierWidget extends StatelessWidget {
  final double barrierHeight;
  final double barrierWidth;
  final double barrierX;
  final bool isThisBottomBarrier;

  const BarrierWidget({
    super.key,
    required this.barrierHeight,
    required this.barrierWidth,
    required this.barrierX,
    required this.isThisBottomBarrier,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment(
        (2 * barrierX + barrierWidth) / (2 - barrierWidth),
        isThisBottomBarrier ? 1 : -1,
      ),
      child: Container(
        color: Colors.green,
        height: mq.height * 3 / 4 * barrierHeight / 2,
        width: mq.width * barrierWidth / 2,
      ),
    );
  }
}
