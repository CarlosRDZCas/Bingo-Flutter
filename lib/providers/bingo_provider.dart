import 'dart:async';

import 'package:flutter/material.dart';

class BingoProvider extends ChangeNotifier {
  List<String> NumerosSalidos = [];
  List<String> NumerosBingo =
      List<String>.generate(76, (int index) => '$index');
  late Timer timer;

  bool _winner = false;
  bool get winner => _winner;
  set winner(bool value) {
    _winner = value;
    notifyListeners();
  }

  bool _isPlaying = false;
  bool get isPlaying => _isPlaying;
  set isPlaying(bool value) {
    _isPlaying = value;
    notifyListeners();
  }

  String _numero = 'Bingo!';
  String get numero => _numero;
  set numero(String value) {
    _numero = value;
    notifyListeners();
  }

  BingoProvider() {
    NumerosBingo.remove('0');
  }

  ganador() {
    isPlaying = false;
    timer.cancel();
    winner = true;
    Future.delayed(const Duration(seconds: 15), () {
      reiniciar();
    });
  }

  jugar() {
    winner = false;
    isPlaying = true;
    timer = Timer.periodic(const Duration(seconds: 2), (time) {
      NumerosBingo.shuffle();
      if (NumerosBingo.isNotEmpty) {
        if (int.parse(NumerosBingo[0]) < 16) {
          numero = 'b${NumerosBingo[0]}';
          NumerosSalidos.add(numero);
        } else if (int.parse(NumerosBingo[0]) >= 16 &&
            int.parse(NumerosBingo[0]) < 31) {
          numero = 'i${NumerosBingo[0]}';
          NumerosSalidos.add(numero);
        } else if (int.parse(NumerosBingo[0]) >= 31 &&
            int.parse(NumerosBingo[0]) < 46) {
          numero = 'n${NumerosBingo[0]}';
          NumerosSalidos.add(numero);
        } else if (int.parse(NumerosBingo[0]) >= 46 &&
            int.parse(NumerosBingo[0]) < 61) {
          numero = 'g${NumerosBingo[0]}';
          NumerosSalidos.add(numero);
        } else if (int.parse(NumerosBingo[0]) >= 61 &&
            int.parse(NumerosBingo[0]) < 76) {
          numero = 'o${NumerosBingo[0]}';
          NumerosSalidos.add(numero);
        }
        NumerosBingo.removeAt(0);
      } else {
        numero = 'FIN';

        timer.cancel();
      }
    });
  }

  parar() {
    isPlaying = false;
    timer.cancel();
  }

  reiniciar() {
    isPlaying = false;
    winner = false;
    timer.cancel();
    NumerosBingo = List<String>.generate(76, (int index) => '$index');
    NumerosBingo.remove('0');
    NumerosSalidos = [];
    numero = 'Bingo!';
    notifyListeners();
  }
}
