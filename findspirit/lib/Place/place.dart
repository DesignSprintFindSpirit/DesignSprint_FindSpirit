import 'dart:core';

import 'package:flutter/material.dart';
import 'Widgets/googleMapSample.dart';
import 'Widgets/placeInfo.dart';
import 'Widgets/placeInfoController.dart';
import 'package:get/get.dart';

class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    final PlaceController = Get.put(placeInfoController());
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
          Padding(
            padding: EdgeInsets.all(13),
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
              child: Text(
                '매장 정보',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            // Place Info ListView
            child: GetBuilder<placeInfoController>(
              builder: (controller) {
                return ListView.builder(
                    itemCount: PlaceController.getPlaceIndex(),
                    padding: const EdgeInsets.all(8),
                    itemBuilder: ((context, index) {
                      return placeInfoContainer(
                        adress: PlaceController.getplaceInfoList()[index]
                            .getAdress(),
                        pickup_time: PlaceController.getplaceInfoList()[index]
                            .getPickupTime(),
                        phone_number: PlaceController.getplaceInfoList()[index]
                            .getPhoneNumber(),
                        real_adress: PlaceController.getplaceInfoList()[index]
                            .getRealAdress(),
                      );
                    }));
              },
            ),
          )
        ],
      )),
    ));
  }
}
