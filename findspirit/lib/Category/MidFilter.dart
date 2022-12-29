import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Widgets/CircleBox.dart';
import 'Widgets/SearchBar.dart';
import 'Widgets/FilterBox.dart';
import 'Widgets/MidFilterCard.dart';
import 'Widgets/MidFilterControler.dart';

class MidFilter extends StatelessWidget {
  const MidFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final spiritListController = Get.put(MidFilterControler());
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
      // alcohol('assets/images/whiskey.png', '위스키'),
      body: GetBuilder<MidFilterControler>(
        builder: (controller) {
          return Column(
            children: [
              CircleBox(),
              SearchBar(),
              FliterBox(),
              Expanded(
                child: ListView.builder(
                    itemCount: spiritListController.getplaceInfoList().length,
                    padding: const EdgeInsets.all(8),
                    itemBuilder: ((context, index) {
                      spiritInfo curSpiritInfo =
                          spiritListController.getplaceInfoList()[index];
                      return MidFilterCard(
                          curSpiritInfo.getImagePath(),
                          curSpiritInfo.getName(),
                          curSpiritInfo.getStar(),
                          curSpiritInfo.getProof(),
                          curSpiritInfo.getCapacity(),
                          curSpiritInfo.getPrice()[0],
                          curSpiritInfo.getPrice()[1],
                          curSpiritInfo.getPrice()[2],
                          curSpiritInfo.getIntroduce());
                    })),
              )
            ],
          );
        },
      ),
      // ListView(
      //   children: [
      //     CircleBox(),
      //     SearchBar(),
      //     FliterBox(),
      //     MidFilterCard('assets/images/busimil.png', '부시밀 10년', 4.1, 40,
      //         700, 30000, 35000, 38000, "셰리, 부드러운, 달콤한"),
      //     MidFilterCard('assets/images/busimil.png', '부시밀 10년', 4.1, 40,
      //         700, 30000, 35000, 38000, "셰리, 부드러운, 달콤한"),
      //     MidFilterCard('assets/images/busimil.png', '부시밀 10년', 4.1, 40,
      //         700, 30000, 35000, 38000, "셰리, 부드러운, 달콤한"),
      //     MidFilterCard('assets/images/busimil.png', '부시밀 10년', 4.1, 40,
      //         700, 30000, 35000, 38000, "셰리, 부드러운, 달콤한"),
      //     MidFilterCard('assets/images/busimil.png', '부시밀 10년', 4.1, 40,
      //         700, 30000, 35000, 38000, "셰리, 부드러운, 달콤한"),
      //   ],
      // )
    ));
  }
}
