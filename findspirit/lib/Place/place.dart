import 'dart:core';

import 'package:flutter/material.dart';
import 'Widgets/googleMapSample.dart';
import 'Widgets/placeInfo.dart';
import 'Widgets/AdressControler.dart';
import 'package:get/get.dart';

class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AdressController());
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
              Navigator.pop(context);
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
      body: Container(
          child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: GetBuilder<AdressController>(builder: (controller) {
                return Text('픽업 위치 :' + controller.getAdress());
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5 * 2,
              child: MapSample(),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('매장 정보'),
            ),
          ),
          Expanded(
            // Place Info ListView
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                placeInfo(
                  adress: "궁동 458-13 GS25 충남대빌리지점",
                  pickup_time: "09:00 ~ 23:00",
                  phone_number: "042)123-4567",
                ),
                placeInfo(
                  adress: "궁동 479-11 세븐일레븐충남대사랑점",
                  pickup_time: "20:00 ~ 23:00",
                  phone_number: "042)379-8379",
                ),
                placeInfo(
                  adress: "궁동 414-16 GS25 궁동충남대점",
                  pickup_time: "10:00 ~ 23:00",
                  phone_number: "042)1234-1234",
                ),
              ],
            ),
          ),
        ],
      )),
    ));
  }
}
