import 'package:findspirit/Cart/Cart.dart';
import 'package:flutter/material.dart';
import '../Home/Home.dart';
import '../Cart/Cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TTaraJu',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/cart': (context) => const Cart()
      },
    );
  }
}
