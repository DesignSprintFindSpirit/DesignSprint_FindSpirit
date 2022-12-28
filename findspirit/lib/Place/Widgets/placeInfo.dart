import 'package:flutter/material.dart';

class placeInfo extends StatelessWidget {
  const placeInfo({super.key});

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
                    child: Text('GS25 궁동점',
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
                    child: Text('09:00 ~ 23:00',
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
                    child: Text('042)000-0000',
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
