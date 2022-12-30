import 'package:findspirit/ComparePrice/Widgets/ProductOrderController.dart';
import 'package:flutter/material.dart';
import '../../Category/Widgets/MidFilterControler.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###');

class ProductOrder extends StatelessWidget {
  int index;
  int num; // 재고 수량
  int liquorPrice;
  int liquorAmount; // 선택 수량

  ProductOrder({
    super.key,
    required this.index,
    required this.num,
    required this.liquorPrice,
    required this.liquorAmount,
  });

  @override
  Widget build(BuildContext context) {
    final midFilterControler = Get.find<MidFilterControler>();
    final productOrderController = Get.put(ProductOrderController());
    //final productOrderController = Get.find<ProductOrderController>();

    return GetBuilder<ProductOrderController>(builder: (controller) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
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
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Column(children: [
                  Image.asset(midFilterControler.target.getImagePath()),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "남은 수량 ${f.format(num)}개",
                    style: TextStyle(fontSize: 14),
                  ),
                ]),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${f.format(liquorPrice)}원",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () =>
                                {controller.decLiquorAmount(index)},
                            icon: Icon(Icons.remove_circle_outlined)),
                        Text(
                          "${productOrderController.getLiquorAmount(index)}개",
                          style: TextStyle(fontSize: 14),
                        ),
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () =>
                                {controller.incLiquorAmount(index)},
                            icon: Icon(Icons.add_circle_outlined)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
