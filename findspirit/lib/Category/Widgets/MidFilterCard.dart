import 'package:flutter/material.dart';

class MidFilterCard extends StatelessWidget {
  final String imgLink;
  final String title;
  final String dosu;
  final int ml;
  final int minPrice;
  final int price1;
  final int price2;
  final String tasty;
  final double star;

  const MidFilterCard(this.imgLink, this.title, this.star, this.dosu, this.ml,
      this.minPrice, this.price1, this.price2, this.tasty);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
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
        child: Row(
          children: [
            Image.asset(this.imgLink),
            Container(
              child: Column(),
            )
          ],
        ),
      ),
    );
  }
}
