import 'package:findspirit/Cart/Cart.dart';
import 'package:flutter/material.dart';
import '../Home/Home.dart';
import '../Cart/Cart.dart';
import '../Place/place.dart';
import 'package:get/get.dart';
import 'Category/MidFilter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TTaraJu',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/place', page: () => Place()),
        GetPage(name: '/cart', page: () => Cart()),
      ],
    );
  }
}
