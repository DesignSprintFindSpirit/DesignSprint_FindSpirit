import 'package:flutter/material.dart';
import '../../Category/Widgets/MidFilterControler.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###');

class ProductOrder extends StatelessWidget {
  int index;
  int num;
  ProductOrder({super.key, required this.index, required this.num});

  @override
  Widget build(BuildContext context) {
    final midFilterControler = Get.put(MidFilterControler());
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
                Image.asset("assets/images/whiskey.png"),
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
                child: GetBuilder<MidFilterControler>(
                  builder: (controller) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${f.format(midFilterControler.target.getPrice()[index])}원",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => {},
                          icon: Icon(Icons.remove_circle_outlined)),
                      Text(
                        "0개",
                        style: TextStyle(fontSize: 14),
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => {},
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
  }
}
