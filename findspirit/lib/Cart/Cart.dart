import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './Widgets/CartLiquorBox.dart';
import './Widgets/CartNotifcationBox.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
              },
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Get.toNamed("/home");
                },
                icon: Icon(
                  Icons.home,
                  // size: 40,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed("/cart");
                },
                icon: Icon(
                  Icons.shopping_cart,
                  // size: 40,
                ),
              )
            ],
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CartNotificationBox(
                  pickupPlace: "대전광역시 유성구 궁동 대학로 99",
                  pickupDate: "1일 뒤 (2022년 12월 22일)"),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children: [
                    CartLiquorBox(
                        imgLink: 'assets/images/busimil.png',
                        liquorName: "잭다니엘",
                        liquorPrice: 30000,
                        liquorAmount: 1),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      padding: MaterialStatePropertyAll(EdgeInsets.zero),
                    ),
                    onPressed: () => {},
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        "360,000원 결제하기",
                      ),
                    )),
              ),
            ],
          )),
    );
    ;
  }
}
