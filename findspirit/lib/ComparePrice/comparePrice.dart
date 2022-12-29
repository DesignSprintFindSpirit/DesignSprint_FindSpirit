import 'package:findspirit/ComparePrice/Widgets/productOrder.dart';
import 'package:flutter/material.dart';
import 'package:findspirit/ComparePrice/Widgets/productInfo.dart';

void main() {
  runApp(ComparePrice());
}

class ComparePrice extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ComparePricePage(),
    );
  }
}

class ComparePricePage extends StatefulWidget {
  @override
  _ComparePricePageState createState() => _ComparePricePageState();
}

class _ComparePricePageState extends State<ComparePricePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(children: [
        productInfo(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DefaultTabController(
                length: 3, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          indicatorColor: Color(0xFF7E5354),
                          labelColor: Color(0xFF7E5354),
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(text: '주문'),
                            Tab(text: '술 정보'),
                            Tab(text: '리뷰'),
                          ],
                        ),
                      ),
                      Container(
                          height: 400, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                                child: Center(
                                    child: Column(
                              children: [
                                ProductOrder(),
                                ProductOrder(),
                                ProductOrder()
                              ],
                            ))),
                            Container(
                              child: Center(child: ProductOrder()),
                            ),
                            Container(
                              child: Center(child: ProductOrder()),
                            ),
                          ]))
                    ])),
          ],
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  side: const BorderSide(width: 1, color: Colors.black),
                  backgroundColor: Colors.white),
              onPressed: () {},
              child: const Text('장바구니 담기',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  side: const BorderSide(width: 1, color: Colors.black),
                  backgroundColor: Colors.black),
              onPressed: () {},
              child: const Text('주문하기',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
