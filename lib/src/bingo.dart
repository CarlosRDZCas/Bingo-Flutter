import 'package:animate_do/animate_do.dart';
import 'package:bingo/providers/bingo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class Bingo extends StatelessWidget {
  const Bingo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bingo = Provider.of<BingoProvider>(context);
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Balls(),
                    ),
                    const SizedBox(width: 100),
                    Row(
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            bingo.isPlaying
                                                ? Colors.red
                                                : Colors.green),
                                    padding: MaterialStateProperty.all<
                                            EdgeInsetsGeometry>(
                                        const EdgeInsets.all(40)),
                                    shape:
                                        MaterialStateProperty.all<CircleBorder>(
                                            const CircleBorder())),
                                onPressed: () {
                                  bingo.isPlaying
                                      ? bingo.parar()
                                      : bingo.jugar();
                                },
                                child: Text(
                                    bingo.isPlaying ? "Parar" : "Iniciar")),
                            const SizedBox(height: 20),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                    padding: MaterialStateProperty.all<
                                            EdgeInsetsGeometry>(
                                        const EdgeInsets.all(40)),
                                    shape:
                                        MaterialStateProperty.all<CircleBorder>(
                                            const CircleBorder())),
                                onPressed: () {
                                  bingo.reiniciar();
                                },
                                child: const Text("Reiniciar"))
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: BallsGridView(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
