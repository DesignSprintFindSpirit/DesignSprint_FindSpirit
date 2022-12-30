import 'package:flutter/material.dart';
import './CircleUI.dart';

class CircleBox extends StatelessWidget {
  const CircleBox({super.key});
// CircleUI('assets/images/whiskey.png', '위스키')
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                CircleUI('assets/alcohols/macallan_33.jpg', '싱글 몰트'),
                CircleUI('assets/images/whiskey.png', '블렌디드'),
                CircleUI('assets/alcohols/buffalo_Trace.jpg', '버번'),
                CircleUI('assets/images/brandy.png', '브랜디'),
                CircleUI('assets/images/beer.png', '맥주'),
                CircleUI('assets/images/liqueur.png', '리큐르'),
                CircleUI('assets/images/jin.png', '진'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.grey, width: 2))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
