import 'package:findspirit/Cart/CartController/CartListViewController.dart';
import 'package:findspirit/OrderList/Widgets/qrCodeGenerator.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findspirit/Home/Widgets/Alcohols.dart';
import './Widgets/AddressAndName.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'Widgets/OrderListController.dart';
import 'package:get/get.dart';
import 'Widgets/ImgDict.dart';

class OrderList extends StatelessWidget {
  final firestore = FirebaseFirestore.instance;

  OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OrderListController = Get.put(OrderListInfoController());
    final cartListController = Get.find<CartListViewController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(size: 40),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
            // Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
              // Navigator.pop(context);
            },
            icon: Icon(
              Icons.home,
              // size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed('/cart');
              // Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(
              Icons.shopping_cart,
              // size: 40,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: cartListController.myCart.length,
        itemBuilder: (context, index) {
          OrderListInfo curInfo = OrderListController.orderInfoList[index];
          return buildOrderCard(
              curInfo.getKinds(),
              curInfo.getAdress(),
              cartListController.myCart[index].liquorName,
              cartListController.myCart[index].liquorAmount,
              curInfo.getKinds() +
                  curInfo.getAdress() +
                  cartListController.myCart[index].liquorName +
                  cartListController.myCart[index].liquorAmount.toString());
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 70,
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black, width: 3))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.receipt,
                size: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '총액: ${cartListController.getTotalPrice()}원',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

Widget buildOrderCard(String kinds, String address, String productName,
    int productNum, String data) {
  return InkWell(
    onTap: () {
      Get.toNamed("/orderListIndex", arguments: {
        'kinds': kinds,
        'address': address,
        'productName': productName,
        'productNum': productNum,
        'data': data
      });
    },
    child: Container(
      child: Card(
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Row(
            children: <Widget>[
              Flexible(flex: 1, child: Image.asset(dictionary[productName]!)),
              // child: alcohol(dictionary[productName]!, productName)),
              Flexible(
                  flex: 3,
                  child: AddressAndName(address, productName, productNum)),
              Flexible(
                flex: 1,
                child: QrCodeGenerator(data, 100.0),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
