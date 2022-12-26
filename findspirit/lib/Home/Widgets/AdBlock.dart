import 'package:flutter/material.dart';

class adBlock extends StatelessWidget {
  const adBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.circular(12)),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
