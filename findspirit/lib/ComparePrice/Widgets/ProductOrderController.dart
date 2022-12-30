import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'productOrder.dart';

class ProductOrderController extends GetxController {
  List<ProductOrder> orderList = [];

  ProductOrderController() {}
  ProductOrderController.init(List<ProductOrder> initialOrderList) {
    // for Debug
    for (ProductOrder item in initialOrderList) {
      orderList.add(item);
    }
  }

  setAllLiquorListIndex() {
    // delLiquorBox() 실행됐을 때 호출.
    // for (int i = 0; i < myCart.value.length; i++) {
    //   myCart.value[i].liquorIndex = i;
    // }
    for (int i = 0; i < orderList.length; i++) {
      orderList[i].index = i;
    }
  }

  addProductOrderBox(int liquorPrice, int liquorAmount, int maxAmount) {
    // myCart.value.add(item);

    orderList.add(ProductOrder(
      liquorPrice: liquorPrice,
      liquorAmount: liquorAmount,
      num: maxAmount,
      index: 0,
      url: "",
    ));

    setAllLiquorListIndex();
    update();
  }

  delLiquorBox(int index) {
    // myCart.value.removeAt(index);
    orderList.removeAt(index);
    setAllLiquorListIndex();
    update();
  }

  void incLiquorAmount(int index) {
    if (orderList[index].liquorAmount < orderList[index].num) {
      orderList[index].liquorAmount++;
    }
    update();
  }

  void decLiquorAmount(int index) {
    if (orderList[index].liquorAmount > 0) {
      orderList[index].liquorAmount--;
    }
    update();
  }

  int getLiquorAmount(int index) {
    int myAmount = 0;
    myAmount = orderList[index].liquorAmount; // for Debug!

    return myAmount;
  }
}
