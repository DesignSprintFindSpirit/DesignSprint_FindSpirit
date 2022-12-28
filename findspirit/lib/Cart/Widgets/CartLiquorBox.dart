import 'package:findspirit/main.dart';
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
      child: Container(
        //width: double.infinity,
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
        child: Row(
          //mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 96,
                width: 96,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                )
                //child: Image.asset("assets/images/whiskey.png")
                ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "$liquorName",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$liquorPrice원",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                SizedBox(width: 100),
                Container(
                  child: Column(
                    children: [
                      IconButton(onPressed: () => {}, icon: Icon(Icons.delete)),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(Icons.add_circle_outlined)),
                          Text(
                            "$liquorAmount",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(Icons.remove_circle_outlined))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
