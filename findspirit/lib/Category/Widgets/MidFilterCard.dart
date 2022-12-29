import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

import 'MidFilterControler.dart';

var f = NumberFormat('###,###,###,###');

class MidFilterCard extends StatelessWidget {
  final String imgLink;
  final String title;
  final int dosu;
  final int ml;
  final int minPrice;
  final int price1;
  final int price2;
  final String tasty;
  final double star;

  const MidFilterCard(this.imgLink, this.title, this.star, this.dosu, this.ml,
      this.minPrice, this.price1, this.price2, this.tasty);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: InkWell(
          onTap: () {
            final controller = Get.put(MidFilterControler());
            controller.setSpiritInfo(spiritInfo(imgLink, title, star, dosu, ml,
                [minPrice, price1, price2], tasty));
            Get.toNamed("/midFilterIndex");
          },
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 13,
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
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Image.asset(this.imgLink),
                        Expanded(
                          child: Column(
                            children: [
                              //상단 제목 별점
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      this.title,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange[400],
                                        size: 24,
                                      ),
                                      Text(
                                        this.star.toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ///////
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    // color: Colors.amber,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '도수 : ' +
                                              this.dosu.toString() +
                                              'Vol.',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          '용량 : ' + this.ml.toString() + 'mL',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          this.tasty,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  150, 144, 0, 0),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    // color: Colors.blue[300],
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '최저가  ' +
                                              f.format(minPrice).toString() +
                                              '원',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          f.format(price1).toString() + '원',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          f.format(price2).toString() + '원',
                                          style: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
