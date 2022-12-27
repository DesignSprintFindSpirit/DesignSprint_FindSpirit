import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './Alcohols.dart';

class categoryBox extends StatelessWidget {
  const categoryBox({super.key});
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
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                alcohol('assets/images/whiskey.png', '위스키'),
                alcohol('assets/images/jin.png', '진'),
                alcohol('assets/images/rum.png', '럼'),
                alcohol('assets/images/tequila.png', '데킬라'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                alcohol('assets/images/liqueur.png', '리큐르'),
                alcohol('assets/images/beer.png', '맥주'),
                alcohol('assets/images/wine.png', '와인'),
                alcohol('assets/images/brandy.png', '브랜디'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                alcohol('assets/images/vodka.png', '보드카'),
                alcohol('assets/images/cocktail.png', '칵테일'),
                SizedBox(width: 54.6),
                SizedBox(width: 54.6),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
