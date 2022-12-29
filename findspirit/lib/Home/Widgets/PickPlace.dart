import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Place/Widgets/placeInfoController.dart';

class pickPlaceBtn extends StatelessWidget {
  const pickPlaceBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final PlaceController = Get.put(placeInfoController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          SizedBox(height: 16),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.black),
            onPressed: () {
              Get.toNamed("/place");
            },
            child: Row(
              children: [
                Text(
                  "픽업장소",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 24,
                ),
                GetBuilder<placeInfoController>(
                  builder: (controller) {
                    return Text(
                      PlaceController.target.getHomePagePlace(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
