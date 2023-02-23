import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bingo_provider.dart';

class CellBall extends StatelessWidget {
  const CellBall({
    Key? key,
    required this.ball,
  }) : super(key: key);

  final String ball;

  @override
  Widget build(BuildContext context) {
    final bingo = Provider.of<BingoProvider>(context);
    return Container(
        padding: const EdgeInsets.all(5),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black54, width: 0.5)),
        child: bingo.NumerosSalidos.contains(ball)
            ? ZoomIn(
                key: Key('ball$ball'),
                child: Image.asset('assets/images/$ball.png'))
            : Container());
  }
}
