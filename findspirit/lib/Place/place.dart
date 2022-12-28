import 'package:flutter/material.dart';
import './Widgets/googleMapSample.dart';

class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(size: 40),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.home,
              // size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(
              Icons.shopping_cart,
              // size: 40,
            ),
          )
        ],
      ),
      body: Container(
          child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Text('현재 위치 : '),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5 * 2,
              child: MapSample(),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
                Container(
                  height: 50,
                  child: const Center(child: Text('hello')),
                ),
              ],
            ),
          ),
        ],
      )),
    ));
  }
}
