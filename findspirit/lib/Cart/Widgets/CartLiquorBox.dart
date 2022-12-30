import 'package:findspirit/main.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Cart.dart';
import '../CartController/CartListViewController.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###');

class CartLiquorBox extends StatelessWidget {
  CartLiquorBox({
    super.key,
    required this.imgLink,
    required this.liquorName,
    required this.liquorPrice,
    required this.liquorAmount,
    required this.liquorIndex,
  });
  String? imgLink;
  String? liquorName;
  int liquorPrice;
  int liquorAmount;
  int liquorIndex;

  setLiquorIndex(int newIndex) {
    liquorIndex = newIndex;
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartListViewController>();

    return GetBuilder<CartListViewController>(
      builder: (controller) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Container(
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
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                SizedBox(
                    width: 100,
                    child: Image.asset(
                      imgLink!,
                      fit: BoxFit.fill,
                    )),
                Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          '$liquorName',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                        IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              controller.delLiquorBox(liquorIndex);
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          // color: Colors.amber,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  f.format(liquorPrice),
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () => {
                                  controller.decLiquorAmount(liquorIndex)
                                  //controller.incLiquorAmount_test()
                                },
                            icon: Icon(
                              Icons.remove_circle_outlined,
                              size: 30,
                            )),
                        Text(
                          // '${controller.myCart.value[liquorIndex].liquorAmount}',
                          '${controller.myCart[liquorIndex].liquorAmount}',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                            onPressed: () => {
                                  Get.find<CartListViewController>()
                                      .incLiquorAmount(liquorIndex)
                                },
                            icon: Icon(
                              Icons.add_circle_outlined,
                              size: 30,
                            ))
                      ],
                    ),
                  ],
                ))
              ]),
            ),
          ),
        );
      },
    );
  }
}
