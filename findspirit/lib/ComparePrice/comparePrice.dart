import 'package:findspirit/ComparePrice/Widgets/productOrder.dart';
import 'package:flutter/material.dart';
import 'package:findspirit/ComparePrice/Widgets/productInfo.dart';
import 'package:get/get.dart';
import './Widgets/Review.dart';
import 'Widgets/Infomation.dart';
import '../Category/Widgets/MidFilterControler.dart';

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
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(size: 40),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Navigator.pop(context);
            Get.back();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAllNamed('/');
              // Get.offNamed(page)
            },
            icon: Icon(
              Icons.home,
              // size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed('/cart');
            },
            icon: Icon(
              Icons.shopping_cart,
              // size: 40,
            ),
          )
        ],
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
                          height: 900, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Column(
                              children: [
                                ProductOrder(
                                  index: 0,
                                  num: 12,
                                ),
                                ProductOrder(
                                  index: 1,
                                  num: 23,
                                ),
                                ProductOrder(
                                  index: 2,
                                  num: 32,
                                ),
                              ],
                            ),
                            Column(
                              children: [Infomation()],
                            ),
                            Column(
                              children: [Review()],
                            ),
                          ]))
                    ])),
          ],
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 65,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "장바구니 추가",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 1, color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "주문하기",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
