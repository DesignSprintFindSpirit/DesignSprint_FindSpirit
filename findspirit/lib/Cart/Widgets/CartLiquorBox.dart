import 'package:flutter/material.dart';
import '../CartController/Controller.dart';

class CartLiquorBox extends StatelessWidget {
  CartLiquorBox({
    super.key,
    required this.liquorName,
    required this.liquorPrice,
    required this.liquorAmount,
  });

  String? liquorName;
  int? liquorPrice;
  int? liquorAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Column(
        children: [
          Container(
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
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                //width: double.infinity,
                alignment: Alignment.topLeft,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Text(
                      "$liquorName",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "$liquorPrice원",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "$liquorAmount개",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
