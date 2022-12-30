import 'package:findspirit/ComparePrice/Widgets/productOrder.dart';
import 'package:flutter/material.dart';
import 'package:findspirit/ComparePrice/Widgets/productInfo.dart';
import 'package:get/get.dart';
import './Widgets/Review.dart';
import 'Widgets/Infomation.dart';
import '../Category/Widgets/MidFilterControler.dart';
import '../Cart/CartController/CartListViewController.dart';
import './Widgets/ProductOrderController.dart';

void main() {
  runApp(ComparePrice());
}

class ComparePrice extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ComparePricePage(),
    );
  }
}

class ComparePricePage extends StatefulWidget {
  @override
  _ComparePricePageState createState() => _ComparePricePageState();
}

class _ComparePricePageState extends State<ComparePricePage> {
  final addWishListController = Get.find<CartListViewController>();
  final currentLiquorController = Get.find<MidFilterControler>();
  final midFilterControler = Get.find<MidFilterControler>();
  final productOrderController = Get.put(ProductOrderController.init([
    // for Debug
    ProductOrder(
      index: 0,
      num: 12,
      liquorPrice: 30000,
      liquorAmount: 0,
      url: 'assets/images/dailyshoot.png',
    ),
    ProductOrder(
      index: 1,
      num: 23,
      liquorPrice: 35000,
      liquorAmount: 0,
      url: 'assets/images/solospirit.png',
    ),
    ProductOrder(
      index: 2,
      num: 32,
      liquorPrice: 38000,
      liquorAmount: 0,
      url: 'assets/images/spirittalk.png',
    ),
  ]));

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
            // Navigator.pop(context);
            Get.back();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAllNamed('/');
              // Get.offNamed(page)
            },
            icon: Icon(
              Icons.home,
              // size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed('/cart');
            },
            icon: Icon(
              Icons.shopping_cart,
              // size: 40,
            ),
          )
        ],
      ),
      body: GetBuilder<ProductOrderController>(builder: (controller) {
        return Column(children: [
          productInfo(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            isScrollable: true,
                            indicatorColor: Color(0xFF7E5354),
                            labelColor: Color(0xFF7E5354),
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(text: '주문'),
                              Tab(text: '술 정보'),
                              Tab(text: '리뷰'),
                            ],
                          ),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height,
                            child: TabBarView(children: [
                              ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemBuilder: ((context, index) {
                                  // return productOrderController.myCart.value[index];
                                  return controller.orderList[index];
                                }),
                                // itemCount: productOrderController.myCart.value.length)),
                                itemCount: controller.orderList.length,
                              ),
                              Infomation(),
                              Review(),
                            ])),
                      ])),
            ],
          ),
        ]);
      }),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 65,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black)),
                child: InkWell(
                  onTap: () {
                    addWishListController.addLiquorBox(
                        currentLiquorController.target.getImagePath(),
                        currentLiquorController.target.getName(),
                        currentLiquorController.target.getPrice()[0],
                        productOrderController.getLiquorAmount(0));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "장바구니 추가",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 1, color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "주문하기",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
