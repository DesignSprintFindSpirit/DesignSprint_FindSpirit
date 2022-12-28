import 'package:flutter/material.dart';
import './Widgets/qrCodeBox.dart';
import './Widgets/DeliveryStatusBox.dart';
import 'package:get/get.dart';

void main() => runApp(OrderListIndex());

class OrderListIndex extends StatelessWidget {
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
                Navigator.pushNamed(context, '/cart');
              },
              icon: Icon(
                Icons.shopping_cart,
                // size: 40,
              ),
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 13),
          children: [
            SizedBox(height: 32),
            Text("상품명 : 제임슨 스탠다드",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 10),
            Text("픽업 장소 : 대전 유성구 궁동",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 32),
            qrCodeBox(),
            Text(
              '배송 현황',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 2))),
              ),
            ),
            SizedBox(height: 10),
            deliveryStatusBox(),
            deliveryStatusBox(),
            deliveryStatusBox(),
          ],
        ),
      ),
    );
  }
}
