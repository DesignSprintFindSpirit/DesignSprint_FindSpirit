import 'package:flutter/material.dart';
import 'OrderListController.dart';
import 'package:get/get.dart';
import 'package:findspirit/Home/Widgets/Alcohols.dart';
import './AddressAndName.dart';
import './QrCodeGenerator.dart';

class OrderInfoContainer extends StatelessWidget {
  final String kinds;
  final String productName;
  final String userAddress;
  final int productNum;

  final String adress;
  final String pickup_time;
  final String phone_number;
  final String real_adress;

  const OrderInfoContainer({
    super.key,
    required this.kinds,
    required this.productName,
    required this.userAddress,
    required this.productNum,
    required this.adress,
    required this.pickup_time,
    required this.phone_number,
    required this.real_adress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
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
            child: Container(
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: alcohol('assets/images/whiskey.png', '위스키')),
                      Flexible(
                          flex: 3,
                          child: AddressAndName('유성구 궁동 99', '제임슨 스탠다드', 3)),
                      Flexible(
                        flex: 1,
                        child:
                            QrCodeGenerator("위스키/유성구 궁동 99/제임슨 스탠다드/3", 100.0),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
