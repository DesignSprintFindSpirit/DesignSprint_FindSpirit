import 'package:get/get.dart';

import '../Widgets/CartLiquorBox.dart';
import 'package:get/get.dart';

class CartListViewController extends GetxController {
  // Rx<List<CartLiquorBox>> myCart = Rx<List<CartLiquorBox>>([]);
  List<CartLiquorBox> myCart = [];
  var totalAmount = 0.obs;
  var totalPrice = 0.obs;

  CartListViewController() {}
  CartListViewController.init(List<CartLiquorBox> initialItemList) {
    // for Debug
    for (CartLiquorBox item in initialItemList) {
      // myCart.value.add(item);
      myCart.add(item);
    }
  }

  void replaceLiquorDup() {
    List<String> LiquorNames = [];

    for (var i = 0; i < myCart.length - 1; i++) {
      if (myCart[i].liquorName == myCart[i + 1].liquorName) {
        myCart[i].liquorAmount += myCart[i + 1].liquorAmount;
        myCart.removeAt(i + 1);
      }
    }
  }

  int getTotalPrice() {
    int total = 0;

    for (CartLiquorBox item in myCart) {
      total += item.liquorAmount * item.liquorPrice;
    }
    return total;
  }

  setAllLiquorListIndex() {
    // delLiquorBox() 실행됐을 때 호출.
    // for (int i = 0; i < myCart.value.length; i++) {
    //   myCart.value[i].liquorIndex = i;
    // }
    for (int i = 0; i < myCart.length; i++) {
      myCart[i].liquorIndex = i;
    }

    replaceLiquorDup();
  }

  addLiquorBox(
      String imgLink, String liquorName, int liquorPrice, int liquorAmount) {
    // myCart.value.add(item);

    myCart.add(CartLiquorBox(
        imgLink: imgLink,
        liquorName: liquorName,
        liquorPrice: liquorPrice,
        liquorAmount: liquorAmount,
        liquorIndex: 0));

    setAllLiquorListIndex();
    update();
  }

  delLiquorBox(int index) {
    // myCart.value.removeAt(index);
    myCart.removeAt(index);
    setAllLiquorListIndex();
    update();
  }

  incLiquorAmount(int index) {
    // if (myCart.value[index]!.liquorAmount < 1000) {
    //   myCart.value[index]!.liquorAmount += 1;
    // }

    if (myCart[index].liquorAmount < 1000) {
      myCart[index].liquorAmount += 1;
    }
    // 최대 1000개까지 주문 가능
    update();
  }

  decLiquorAmount(int index) {
    // if (myCart.value[index]!.liquorAmount != null &&
    //     myCart.value[index]!.liquorAmount > 1) {
    //   myCart.value[index]!.liquorAmount -= 1;
    // }

    if (myCart[index].liquorAmount != null && myCart[index].liquorAmount > 1) {
      myCart[index].liquorAmount -= 1;
    }
    // 2개 이상 일때는 빼고, 1개일때는 빼지않고 delete Button을 통해 요소를 삭제할 수 있도록 한다.
    update();
  }
}
