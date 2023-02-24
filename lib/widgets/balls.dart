import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/bingo_provider.dart';

class Balls extends StatelessWidget {
  const Balls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bingo = Provider.of<BingoProvider>(context);
    return Align(
      alignment: Alignment.topCenter,
      child: ZoomIn(
        key: Key(bingo.numero),
        child: SizedBox(
          width: 400,
          height: 400,
          child: bingo.NumerosSalidos.contains(bingo.numero)
              ? Image.asset(
                  'assets/images/${bingo.numero}.png',
                  scale: 1.2,
                )
              : Center(
                child: Text(bingo.numero,
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold)),
              ),
        ),
      ),
    );
  }
}
