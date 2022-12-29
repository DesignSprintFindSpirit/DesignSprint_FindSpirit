import "package:flutter/material.dart";
import 'package:get/get.dart';
import "../../Category/Widgets/MidFilterControler.dart";
import 'ProductOrderController.dart';
import 'package:intl/intl.dart';

var f = NumberFormat('###,###,###,###');

class productInfo extends StatelessWidget {
  const productInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final midFilterControler = Get.find<MidFilterControler>();
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
          padding: EdgeInsets.symmetric(vertical: 26),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 100,
                            child: Image.asset('assets/images/whiskey.png')),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GetBuilder<MidFilterControler>(
                      builder: (controller) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(midFilterControler.target.getIntroduce(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xFFC1AAAA))),
                            SizedBox(
                              height: 10,
                            ),
                            Text(midFilterControler.target.getName(),
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.left),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "최저가 ${f.format(midFilterControler.target.getPrice()[0])} 원",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.left),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "도수 ${midFilterControler.target.getProof()}% Val.",
                                style: TextStyle(fontSize: 10)),
                            Text(
                                "용량 ${midFilterControler.target.getCapacity()}mL",
                                style: TextStyle(fontSize: 10)),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Text("구매 732 | 재주문율 32%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color(0xFFC1AAAA)))
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.star),
                            Text("4.6"),
                          ],
                        )
                      ],
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
