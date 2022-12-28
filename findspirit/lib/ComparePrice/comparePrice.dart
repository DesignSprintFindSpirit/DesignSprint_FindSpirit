import 'package:flutter/material.dart';

void main() => runApp(ComparePrice());

class ComparePrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
              onPressed: null),
          actions: [
            IconButton(
                icon: Icon(Icons.home, color: Colors.black), onPressed: null),
            IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.black),
                onPressed: null),
          ],
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [],
        ),
      ),
    );
  }
}
