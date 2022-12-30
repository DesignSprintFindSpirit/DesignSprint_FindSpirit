import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class OrderListInfo {
  late String _kinds;
  late String _product_name;
  late String _user_address;
  late int _product_num;

  OrderListInfo(
      String kinds, String product_name, String user_address, int product_num) {
    _kinds = kinds;
    _product_name = product_name;
    _product_num = product_num;
    _user_address = user_address;
  }

  String getAdress() {
    return _user_address;
  }

  String getProductName() {
    return _product_name;
  }

  String getKinds() {
    return _kinds;
  }

  int getProductNum() {
    return _product_num;
  }

  String getFullData() {
    return _kinds +
        '/' +
        _user_address +
        '/' +
        _product_name +
        '/' +
        _product_num.toString();
  }
}

class OrderListInfoController extends GetxController {
  final List<OrderListInfo> orderInfoList = [
    OrderListInfo(
      "위스키",
      "메이커스 마크",
      "유성구 궁동 99",
      3,
    ),
    OrderListInfo(
      "위스키",
      "벅",
      "유성구 궁동 99",
      3,
    ),
    OrderListInfo(
      "위스키",
      "글렌리벳",
      "유성구 궁동 99",
      3,
    ),
    OrderListInfo(
      "위스키",
      "버팔로 트레이스",
      "유성구 궁동 99",
      3,
    ),
  ];
}
