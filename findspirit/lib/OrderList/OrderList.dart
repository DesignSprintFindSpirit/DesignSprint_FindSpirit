import 'package:flutter/material.dart';
import 'package:findspirit/Home/Widgets/Alcohols.dart';
import 'package:findspirit/OrderList/model/AddressAndName.dart';
import 'package:qr_flutter/qr_flutter.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.house,
              semanticLabel: 'home',
            ),
            onPressed: () {
              Navigator.pop(context);
              print('Home button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              semanticLabel: 'cart',
            ),
            onPressed: () {
              print('장바구니 버튼');
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('menu button');
          },
        ),
        title: const Text('찾아주'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return buildOrderCard();
        },
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

Widget buildOrderCard() {
  return Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Row(
        children: <Widget>[
          Flexible(flex: 1, child: alcohol('assets/images/whiskey.png', '위스키')),
          Flexible(flex: 3, child: AddressAndName('유성구 궁동 xxx', '제임슨 스탠다드', 3)),
        ],
      ),
    ),
  );
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