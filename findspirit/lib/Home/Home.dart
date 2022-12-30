import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './Widgets/PickPlace.dart';
import './Widgets/AdBlock.dart';
import './Widgets/OrderListBox.dart';
import './Widgets/CategoryBox.dart';
import '../Cart/CartController/CartListViewController.dart';
import '../Cart/Widgets/CartLiquorBox.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartListViewController>();

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(size: 40),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed("/cart");
            },
            icon: Icon(
              Icons.shopping_cart,
            ),
          )
        ],
      ),
      body: ListView(
        children: [pickPlaceBtn(), adBlock(), orderListBox(), categoryBox()],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            // height: 160,
            child: DrawerHeader(
              child: Column(children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Image.asset('assets/images/logo.png')),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Image.asset('assets/images/chacha.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Text("차차",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("님", style: TextStyle(fontSize: 16))
                  ],
                ),
              ]),
            ),
          ),
          ListTile(
            title: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.black))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.receipt,
                          size: 48,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                        Text(
                          "전체 주문 내역",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )),
          ),
          ListTile(
            title: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.black))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.credit_card,
                          size: 48,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                        Text(
                          "카드 관리",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )),
          ),
          ListTile(
            title: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.black))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.rate_review,
                          size: 48,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                        Text(
                          "리뷰 관리",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )),
          ),
          ListTile(
            title: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.black))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.cached,
                          size: 48,
                          color: Colors.black,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                        Text(
                          "교환 / 환불",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.call,
                size: 48,
              ),
              Icon(
                Icons.notifications_active,
                size: 48,
              ),
              Icon(
                Icons.settings,
                size: 48,
              )
            ],
          )
        ],
      )),
    ));
  }
}
