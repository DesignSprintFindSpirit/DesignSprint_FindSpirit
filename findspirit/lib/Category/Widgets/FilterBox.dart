import 'dart:ffi';

import 'package:flutter/material.dart';

class FliterBox extends StatelessWidget {
  const FliterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              Icon(
                Icons.tune,
                size: 48,
              ),
              FilledBtn(iconType: Icons.arrow_circle_down, text: '숙성년'),
              FilledBtn(iconType: Icons.arrow_circle_down, text: '가격'),
              FilledBtn(iconType: Icons.arrow_circle_down, text: '용량')
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13),
          child: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 2))),
          ),
        ),
      ]),
    );
  }
}

class FilledBtn extends StatelessWidget {
  FilledBtn({super.key, required this.iconType, required this.text});

  IconData? iconType;
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
            child: Row(
          children: [
            Icon(
              iconType,
              size: 30,
            ),
            Text(
              '$text',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        )),
      ),
    );
  }
}
