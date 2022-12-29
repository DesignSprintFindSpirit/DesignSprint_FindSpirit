import 'package:flutter/material.dart';
import 'placeInfoController.dart';
import 'package:get/get.dart';

class placeInfoContainer extends StatelessWidget {
  final String adress;
  final String pickup_time;
  final String phone_number;
  final String real_adress;

  const placeInfoContainer({
    super.key,
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
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 160,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image(
                        image: AssetImage('assets/images/gs.png'),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Container(
                  // color: Colors.amber[400],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            adress,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            // softWrap: false,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(real_adress,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('픽업 가능 시간',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pickup_time,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('문의',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(phone_number,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                final controller =
                                    Get.put(placeInfoController());
                                controller.setPlace(adress, pickup_time,
                                    phone_number, real_adress);
                              },
                              child: Text('선택')),
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
    // return Container(
    //   padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
    //   child: Row(
    //     children: [
    //       Container(
    //         width: 150,
    //         height: 130,
    //         child: Expanded(
    //           child: Image(image: AssetImage('assets/images/gs.png')),
    //         ),
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(5),
    //           color: Colors.white,
    //         ),
    //       ),
    //       VerticalDivider(
    //         thickness: 1,
    //         color: Colors.grey,
    //       ),
    //       Expanded(
    //         child: Column(
    //           children: [
    //             Align(
    //               alignment: Alignment.centerLeft,
    //               child: Container(
    //                 padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
    //                 child: Text(adress,
    //                     style: TextStyle(
    //                         fontSize: 12, fontWeight: FontWeight.bold)),
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.centerLeft,
    //               child: Container(
    //                 padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
    //                 child: Text(real_adress,
    //                     style: TextStyle(
    //                         fontSize: 12, fontWeight: FontWeight.bold)),
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.centerLeft,
    //               child: Container(
    //                 padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
    //                 child: Text('픽업 가능 시간',
    //                     style: TextStyle(
    //                         fontSize: 10, fontWeight: FontWeight.bold)),
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.centerLeft,
    //               child: Container(
    //                 padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
    //                 child: Text(pickup_time,
    //                     style: TextStyle(
    //                       fontSize: 10,
    //                     )),
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.centerLeft,
    //               child: Container(
    //                 padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
    //                 child: Text('문의',
    //                     style: TextStyle(
    //                         fontSize: 10, fontWeight: FontWeight.bold)),
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.centerLeft,
    //               child: Container(
    //                 padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
    //                 child: Text(phone_number,
    //                     style: TextStyle(
    //                       fontSize: 10,
    //                     )),
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.centerRight,
    //               child: Expanded(
    //                   child: TextButton(
    //                 child: Text('선택',
    //                     style: TextStyle(
    //                       fontSize: 10,
    //                     )),
    //                 onPressed: () {
    //                   final controller = Get.put(placeInfoController());
    //                   controller.setPlace(
    //                       adress, pickup_time, phone_number, real_adress);
    //                 },
    //               )),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    //   decoration: BoxDecoration(
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.5),
    //         blurRadius: 5,
    //         offset: Offset(0, 3),
    //       ),
    //     ],
    //     borderRadius: BorderRadius.circular(5),
    //     color: Colors.white,
    //   ),
    // );
  }
}
