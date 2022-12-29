import 'package:flutter/material.dart';

class ProductOrder extends StatelessWidget {
  ProductOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  "남은 수량 32개",
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
                      "30,000원",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
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
