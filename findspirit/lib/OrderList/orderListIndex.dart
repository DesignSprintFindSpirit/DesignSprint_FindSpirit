import 'package:findspirit/OrderList/Widgets/QrCodeGenerator.dart';
import 'package:flutter/material.dart';
import './Widgets/DeliveryStatusBox.dart';
import 'package:get/get.dart';

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
              Get.back();
              // Navigator.pop(context);
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
                // Navigator.pushNamed(context, '/cart');
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
            Text("상품명 : ${Get.arguments['productName']}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 10),
            Text("픽업 장소 : ${Get.arguments['address']}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 32),
            Container(
              child: QrCodeGenerator('${Get.arguments['data']}', 250.0),
              // child: QrCodeGenerator("위스키/유성구 궁동 99/제임슨 스탠다드/3", 250.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
