import 'package:findspirit/Cart/Cart.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'Home/Home.dart';
import 'Cart/Cart.dart';
import 'Place/place.dart';
import 'package:get/get.dart';
import 'Category/MidFilter.dart';
import 'OrderList/OrderList.dart';
import 'Category/MidFilter.dart';
import 'OrderList/OrderListIndex.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        GetPage(name: '/midFilter', page: () => MidFilter()),
        GetPage(name: '/orderList', page: () => OrderList()),
        GetPage(name: '/orderListIndex', page: () => OrderListIndex()),
        GetPage(name: '/place', page: () => Place()),
        GetPage(name: '/cart', page: () => Cart()),
      ],
    );
  }
}
