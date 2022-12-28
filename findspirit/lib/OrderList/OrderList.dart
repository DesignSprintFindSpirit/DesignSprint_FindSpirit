import 'package:flutter/material.dart';
import 'package:findspirit/Home/Widgets/Alcohols.dart';
import 'package:findspirit/OrderList/model/AddressAndName.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:get/get.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        iconTheme: IconThemeData(size: 40),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.home,
              // size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: Icon(
              Icons.shopping_cart,
              // size: 40,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return buildOrderCard();
        },
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

Widget buildOrderCard() {
  return InkWell(
      onTap: () {
        Get.toNamed("/orderListIndex");
      },
      child: Container(
        child: Card(
          elevation: 4.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Row(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: alcohol('assets/images/whiskey.png', '위스키')),
                Flexible(
                    flex: 3, child: AddressAndName('유성구 궁동 99', '제임슨 스탠다드', 3)),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      QrImage(
                        data: "위스키/유성구 궁동 xxx/제임슨 스탠다드/3",
                        version: QrVersions.auto,
                        backgroundColor: Colors.white,
                        size: 100.0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
}

// Widget buildOrderCard() {
//   return Card(
//     elevation: 4.0,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 13.0),
//       child: Row(
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.only(right: 20.0),
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Flexible(
//                     flex: 1,
//                     child: alcohol('assets/images/whiskey.png', '위스키')),
//                 Flexible(
//                     flex: 3,
//                     child: AddressAndName('유성구 궁동 xxx', '제임슨 스탠다드', 3)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }