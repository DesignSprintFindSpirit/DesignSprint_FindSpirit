import "package:flutter/material.dart";

class productInfo extends StatelessWidget {
  const productInfo({super.key});

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
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset('assets/images/whiskey.png')),
                          Text("구매 732 | 재주문율 32%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xFFC1AAAA)))
                        ],
                      ),
                      Column(
                        children: [
                          Text("셰리, 부드러운, 달콤한",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xFFC1AAAA))),
                          Text("Jack 다니엘",
                              style: TextStyle(fontSize: 25),
                              textAlign: TextAlign.left),
                          Text("최저가 30,000원",
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left),
                          Text("도수 40% Val.", style: TextStyle(fontSize: 10)),
                          Text("용량 700mL", style: TextStyle(fontSize: 10)),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Text("4.6"),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
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
