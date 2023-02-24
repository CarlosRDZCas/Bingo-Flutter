import 'dart:ui';

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
          const Body(),
          if (bingo.winner)
            Bounce(
              infinite: true,
              duration: const Duration(milliseconds: 1500),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                  child:
                      Container(child: const Center(child: Text('Ganador!')))),
            ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bingo = Provider.of<BingoProvider>(context);
    return Column(
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
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  bingo.isPlaying ? Colors.red : Colors.green),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      const EdgeInsets.all(40)),
                              shape: MaterialStateProperty.all<CircleBorder>(
                                  const CircleBorder())),
                          onPressed: () {
                            bingo.isPlaying ? bingo.parar() : bingo.jugar();
                          },
                          child: Text(bingo.isPlaying ? "Parar" : "Iniciar")),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  bingo.NumerosSalidos.isNotEmpty
                                      ? Colors.blue
                                      : Colors.grey),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      const EdgeInsets.all(40)),
                              shape: MaterialStateProperty.all<CircleBorder>(
                                  const CircleBorder())),
                          onPressed: () {
                            bingo.NumerosSalidos.isNotEmpty
                                ? bingo.ganador()
                                : null;
                          },
                          child: const Text("Bingo!")),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              padding:
                                  MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      const EdgeInsets.all(40)),
                              shape: MaterialStateProperty.all<CircleBorder>(
                                  const CircleBorder())),
                          onPressed: () {
                            bingo.reiniciar();
                          },
                          child: const Text("Reiniciar")),
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
    );
  }
}
