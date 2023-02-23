import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bingo_provider.dart';

class CirculoBall extends StatefulWidget {
  const CirculoBall({
    Key? key,
   
  }) : super(key: key);


  @override
  State<CirculoBall> createState() => _CirculoBallState();
}

class _CirculoBallState extends State<CirculoBall> {
  @override
  Widget build(BuildContext context) {
        final bingo = Provider.of<BingoProvider>(context);
    return SizedBox(
        width: 120,
        height: 120,
        child: Stack(
          children: [
            SizedBox(
              width: 120,
              height: 120,
              child: CustomPaint(
                painter: BallPainter(),
              ),
            ),
            Center(
                child: Text(bingo.numero,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold))),
          ],
        ));
  }
}

class BallPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, size.width / 1.8 - 10, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
