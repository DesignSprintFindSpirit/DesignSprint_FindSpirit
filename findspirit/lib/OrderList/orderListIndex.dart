import 'package:flutter/material.dart';
import './Widgets/qrCodeBox.dart';
import './Widgets/DeliveryStatusBox.dart';

void main() => runApp(OrderListIndex());

class OrderListIndex extends StatelessWidget {
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
          padding: EdgeInsets.all(13),
          children: [
            Text("상품명 : 제임슨 스탠다드",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            Text("픽업 장소 : 대전 유성구 궁동",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            qrCodeBox(),
            Text(
              '배송 현황',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              textAlign: TextAlign.center,
            ),
            deliveryStatusBox(),
            deliveryStatusBox(),
            deliveryStatusBox(),
          ],
        ),
      ),
    );
  }
}