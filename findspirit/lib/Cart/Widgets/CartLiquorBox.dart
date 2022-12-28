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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset("assets/images/whiskey.png"),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
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
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Container(
                    //width: double.infinity,
                    alignment: Alignment.topLeft,
                    child: Row(
                      //mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$liquorName",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "$liquorPrice원",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                alignment: Alignment.topRight,
                                onPressed: () => {},
                                icon: Icon(Icons.delete)),
                            Row(
                              children: [
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () => {},
                                    icon: Icon(Icons.add_circle_outlined)),
                                Text(
                                  "$liquorAmount개",
                                  style: TextStyle(fontSize: 14),
                                ),
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () => {},
                                    icon: Icon(Icons.remove_circle_outlined)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
