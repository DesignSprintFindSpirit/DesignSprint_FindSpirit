import "package:flutter/material.dart";

class orderListBox extends StatelessWidget {
  const orderListBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
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
          child: Row(
            children: [
              SizedBox(width: 46),
              Icon(
                Icons.receipt,
                size: 58,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Text(
                "내 주문 확인",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
              // Image.asset('assets/images/beer.png')
            ],
          ),
        ),
      ),
    );
  }
}
