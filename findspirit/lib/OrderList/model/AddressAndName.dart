import "package:flutter/material.dart";

class AddressAndName extends StatelessWidget {
  final String userAddress;
  final String productName;
  final int productNum;
  const AddressAndName(this.userAddress, this.productName, this.productNum);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$userAddress',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            '$productName * $productNum',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
