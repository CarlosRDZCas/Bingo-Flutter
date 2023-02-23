import 'package:bingo/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BallsGridView extends StatelessWidget {
  const BallsGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.1,
        crossAxisCount: 16,
      ),
      children: [
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 0.5)),
            child: const Center(child: Text('B'))),
        const CellBall(ball: 'b1'),
        const CellBall(ball: 'b2'),
        const CellBall(ball: 'b3'),
        const CellBall(ball: 'b4'),
        const CellBall(ball: 'b5'),
        const CellBall(ball: 'b6'),
        const CellBall(ball: 'b7'),
        const CellBall(ball: 'b8'),
        const CellBall(ball: 'b9'),
        const CellBall(ball: 'b10'),
        const CellBall(ball: 'b11'),
        const CellBall(ball: 'b12'),
        const CellBall(ball: 'b13'),
        const CellBall(ball: 'b14'),
        const CellBall(ball: 'b15'),
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 0.5)),
            child: const Center(child: Text('I'))),
        const CellBall(ball: 'i16'),
        const CellBall(ball: 'i17'),
        const CellBall(ball: 'i18'),
        const CellBall(ball: 'i19'),
        const CellBall(ball: 'i20'),
        const CellBall(ball: 'i21'),
        const CellBall(ball: 'i22'),
        const CellBall(ball: 'i23'),
        const CellBall(ball: 'i24'),
        const CellBall(ball: 'i25'),
        const CellBall(ball: 'i26'),
        const CellBall(ball: 'i27'),
        const CellBall(ball: 'i28'),
        const CellBall(ball: 'i29'),
        const CellBall(ball: 'i30'),
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 0.5)),
            child: const Center(child: Text('N'))),
        const CellBall(ball: 'n31'),
        const CellBall(ball: 'n32'),
        const CellBall(ball: 'n33'),
        const CellBall(ball: 'n34'),
        const CellBall(ball: 'n35'),
        const CellBall(ball: 'n36'),
        const CellBall(ball: 'n37'),
        const CellBall(ball: 'n38'),
        const CellBall(ball: 'n39'),
        const CellBall(ball: 'n40'),
        const CellBall(ball: 'n41'),
        const CellBall(ball: 'n42'),
        const CellBall(ball: 'n43'),
        const CellBall(ball: 'n44'),
        const CellBall(ball: 'n45'),
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 0.5)),
            child: const Center(child: Text('G'))),
        const CellBall(ball: 'g46'),
        const CellBall(ball: 'g47'),
        const CellBall(ball: 'g48'),
        const CellBall(ball: 'g49'),
        const CellBall(ball: 'g50'),
        const CellBall(ball: 'g51'),
        const CellBall(ball: 'g52'),
        const CellBall(ball: 'g53'),
        const CellBall(ball: 'g54'),
        const CellBall(ball: 'g55'),
        const CellBall(ball: 'g56'),
        const CellBall(ball: 'g57'),
        const CellBall(ball: 'g58'),
        const CellBall(ball: 'g59'),
        const CellBall(ball: 'g60'),
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black54, width: 0.5)),
            child: const Center(child: Text('O'))),
        const CellBall(ball: 'o61'),
        const CellBall(ball: 'o62'),
        const CellBall(ball: 'o63'),
        const CellBall(ball: 'o64'),
        const CellBall(ball: 'o65'),
        const CellBall(ball: 'o66'),
        const CellBall(ball: 'o67'),
        const CellBall(ball: 'o68'),
        const CellBall(ball: 'o69'),
        const CellBall(ball: 'o70'),
        const CellBall(ball: 'o71'),
        const CellBall(ball: 'o72'),
        const CellBall(ball: 'o73'),
        const CellBall(ball: 'o74'),
        const CellBall(ball: 'o75'),
      ],
    );
  }
}
