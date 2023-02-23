import 'package:bingo/providers/bingo_provider.dart';
import 'package:bingo/src/bingo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BingoProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bingo',
        home: Scaffold(
          body: Bingo(),
        ),
      ),
    );
  }
}
