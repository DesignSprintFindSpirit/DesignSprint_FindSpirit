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
                CircleUI('assets/alcohols/buck.jpg', '벅'),
                CircleUI('assets/images/whiskey.png', '위스키'),
                CircleUI('assets/images/whiskey.png', '위스키'),
                CircleUI('assets/images/whiskey.png', '위스키'),
                CircleUI('assets/images/whiskey.png', '위스키'),
                CircleUI('assets/images/whiskey.png', '위스키'),
                CircleUI('assets/images/whiskey.png', '위스키'),
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
