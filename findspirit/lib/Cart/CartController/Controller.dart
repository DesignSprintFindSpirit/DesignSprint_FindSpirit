import 'package:get/get.dart';

class CartController extends GetxController {
  int _totalPrice = 0;
  List<Map<String, Map<int, int>>>? _cartProducts;

  int getTotalLiquorAmount() {
    int total = 0;

    for (var element in _cartProducts!) {
      total++;
    }

    return total;
  }

  void addProduct() {
    // when add to 'cart', it will be executed.    (onPressed Method)
  }
  void delProduct() {
    // when delete to 'cart', it will be executed. (onPressed Method)
  }

  void incTotalPrice() {
    // when 'plus' button is clicked, it will be executed.
  }
  void decTotalPrice() {
    // when 'minus' button is clicked, it will be executed.
  }
}
