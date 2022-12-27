import "package:flutter/material.dart";

class deliveryStatusBox extends StatelessWidget {
  const deliveryStatusBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
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
              padding: EdgeInsets.symmetric(vertical: 26),
              child: Center(
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          '12월 13일',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          '위치',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          '상태',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('11:20',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                        DataCell(Text('유성구 보관소',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                        DataCell(Text('보관',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('08:00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                        DataCell(Text('옥천 hub',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                        DataCell(Text('출고',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
