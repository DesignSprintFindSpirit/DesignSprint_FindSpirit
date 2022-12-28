import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeGenerator extends StatelessWidget {
  // final String userAddress;
  // final String productName;
  // final int productNum;
  final double qrSize;
  final String dataSet;

  const QrCodeGenerator(this.dataSet, this.qrSize);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
          QrImage(
            // data: '$userAddress/$productName/$productNum',
            data: dataSet,
            version: QrVersions.auto,
            backgroundColor: Colors.white,
            size: qrSize,
          ),
        ],
      ),
    );
  }
}
