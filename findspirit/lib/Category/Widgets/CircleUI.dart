import 'package:flutter/material.dart';

class CircleUI extends StatelessWidget {
  final String imgLink;
  final String text;
  const CircleUI(this.imgLink, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(this.imgLink), fit: BoxFit.contain)),
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )
        ],
      ),
    );
  }
}
