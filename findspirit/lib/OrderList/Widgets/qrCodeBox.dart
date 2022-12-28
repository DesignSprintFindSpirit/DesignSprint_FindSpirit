import "package:flutter/material.dart";

class qrCodeBox extends StatelessWidget {
  const qrCodeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 26),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.qr_code,
                  size: 200,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              ],
            )),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
