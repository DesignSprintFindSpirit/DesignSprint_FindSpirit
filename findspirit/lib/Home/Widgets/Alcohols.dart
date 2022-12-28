import "package:flutter/material.dart";
import 'package:get/get.dart';

class alcohol extends StatelessWidget {
  final String imgLink;
  final String text;
  const alcohol(this.imgLink, this.text);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.toNamed("/midFilter");
        },
        child: Container(
          child: Center(
              child: Column(children: [
            Image.asset(imgLink),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ])),
        ));
  }
}
