import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './Widgets/CartLiquorBox.dart';
import './Widgets/CartNotifcationBox.dart';

import './CartController/CartListViewController.dart';

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
          body: GetBuilder<CartListViewController>(builder: (controller) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CartNotificationBox(
                    pickupPlace: "대전광역시 유성구 궁동 대학로 99",
                    pickupDate: "1일 뒤 (2022년 12월 22일)"),
                Expanded(
                  // child: Obx(() => ListView.separated(
                  //     scrollDirection: Axis.vertical,
                  //     shrinkWrap: true,
                  //     padding: EdgeInsets.zero,
                  //     itemBuilder: ((context, index) {
                  //       // return controller.myCart.value[index];
                  //       return controller.myCart[index];
                  //     }),
                  //     separatorBuilder: ((context, index) => const Divider()),
                  //     // itemCount: controller.myCart.value.length)),
                  //     itemCount: controller.myCart.length)),

                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemBuilder: ((context, index) {
                      // return controller.myCart.value[index];
                      return controller.myCart[index];
                    }),
                    separatorBuilder: ((context, index) => const Divider()),
                    // itemCount: controller.myCart.value.length)),
                    itemCount: controller.myCart.length,
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
                        height: 85,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          "${controller.getTotalPrice()}원 결제하기",
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                ),
              ],
            );
          })),
    );
    ;
  }
}
