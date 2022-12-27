import "package:flutter/material.dart";

class deliveryStatusBox extends StatelessWidget {
  const deliveryStatusBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
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
              padding: EdgeInsets.symmetric(vertical: 26),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle),
                  Text(
                    "12월 13일",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  Text("11:20 | 유성구 보관소 | 보관",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text("08:00 | 옥천 hub | 출고",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ],
              )),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
