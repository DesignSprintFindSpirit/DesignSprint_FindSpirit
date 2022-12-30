import 'package:flutter/material.dart';

class adBlock extends StatelessWidget {
  const adBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: <Widget>[
          // Image.asset('assets/banner/banner_hyungshin.png',
          //     fit: BoxFit.contain),
          Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(12)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/banner/banner_hyungshin.png',
                  fit: BoxFit.fill,
                ),
              )),

          SizedBox(height: 16),
        ],
      ),
    );
  }
}
