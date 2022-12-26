import "package:flutter/material.dart";

class alcohol extends StatelessWidget {
  final String imgLink;
  final String text;
  const alcohol(this.imgLink, this.text);
// Image.asset('assets/images/beer.png')
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Image.asset(imgLink),
      SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }
}
