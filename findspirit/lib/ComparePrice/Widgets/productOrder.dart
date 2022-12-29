import 'package:flutter/material.dart';

class ProductOrder extends StatelessWidget {
  ProductOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      child: Row(
        children: [
          Column(
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
                    width: 350,
                    //alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Column(children: [
                          Image.asset("assets/images/whiskey.png"),
                          Text(
                            "남은 수량 32개",
                            style: TextStyle(fontSize: 14),
                          ),
                        ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "30,000원",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
