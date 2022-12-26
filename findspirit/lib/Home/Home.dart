import 'package:flutter/material.dart';
import '../Cart/Cart.dart';
import './Widgets/PickPlace.dart';
import './Widgets/AdBlock.dart';
import './Widgets/OrderListBox.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      body: Column(
        children: [pickPlaceBtn(), adBlock(), orderListBox()],
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 160,
            child: DrawerHeader(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(0.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Row(mainAxisSize: MainAxisSize.max, children: [
                    Container(
                      child: Icon(Icons.verified_user_rounded),
                      padding: EdgeInsets.all(20),
                    ),
                    Text("차차 님"),
                  ]),
                )),
          ),
          ListTile(
            title: Container(
                child: Row(
              children: [
                Icon(Icons.add),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),
                Text("전체 주문 내역"),
              ],
            )),
          ),
          ListTile(
            title: Text("카드 관리"),
          ),
          ListTile(
            title: Text("리뷰 관리"),
          ),
          ListTile(
            title: Text("교환 / 환불"),
          )
        ],
      )),
    ));
  }
}
