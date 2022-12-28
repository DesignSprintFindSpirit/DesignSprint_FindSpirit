import 'package:findspirit/OrderList/Widgets/qrCodeGenerator.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:findspirit/Home/Widgets/Alcohols.dart';
import './Widgets/AddressAndName.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:get/get.dart';

class OrderList extends StatelessWidget {
  final firestore = FirebaseFirestore.instance;

  getData() async {
    var result =
        await firestore.collection('product').doc('AYQLAG3H9K7wRqcAXHf0').get();
    print(result.data());
  }

  OrderList({Key? key}) : super(key: key);

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
              getData();
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(
              Icons.shopping_cart,
              // size: 40,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return buildOrderCard();
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
                '총액: 156,000원',
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

Widget buildOrderCard() {
  return InkWell(
      onTap: () {
        Get.toNamed("/orderListIndex");
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
                Flexible(
                    flex: 1,
                    child: alcohol('assets/images/whiskey.png', '위스키')),
                Flexible(
                    flex: 3, child: AddressAndName('유성구 궁동 99', '제임슨 스탠다드', 3)),
                Flexible(
                  flex: 1,
                  child: QrCodeGenerator("위스키/유성구 궁동 99/제임슨 스탠다드/3", 100.0),
                ),
              ],
            ),
          ),
        ),
      ));
}
