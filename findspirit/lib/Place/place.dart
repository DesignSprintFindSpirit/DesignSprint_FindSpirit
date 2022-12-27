import 'package:flutter/material.dart';
import './Widgets/googleMapSample.dart';

class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 121, 69, 69),
        foregroundColor: Colors.black,
        // leading: Icon(
        //   Icons.menu,
        //   size: 24,
        // ),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(
                  Icons.shopping_cart,
                  size: 24,
                ),
              )),
        ],
      ),
      body: MapSample(),
    ));
  }
}
