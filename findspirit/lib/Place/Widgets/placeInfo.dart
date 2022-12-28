import 'package:flutter/material.dart';

class placeInfo extends StatelessWidget {
  final String adress;
  final String pickup_time;
  final String phone_number;

  const placeInfo(
      {super.key,
      required this.adress,
      required this.pickup_time,
      required this.phone_number});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
      height: 160,
      child: Row(
        children: [
          Container(
            width: 150,
            height: 130,
            child: Expanded(
              child: Image(image: AssetImage('assets/images/gs.png')),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey,
          ),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(adress,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text('픽업 가능 시간',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(pickup_time,
                        style: TextStyle(
                          fontSize: 10,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text('문의',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(phone_number,
                        style: TextStyle(
                          fontSize: 10,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Expanded(
                      child: TextButton(
                    child: Text('선택',
                        style: TextStyle(
                          fontSize: 10,
                        )),
                    onPressed: () {},
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
    );
  }
}
