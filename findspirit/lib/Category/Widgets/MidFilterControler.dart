import 'package:get/get.dart';
import 'package:flutter/material.dart';

// 'assets/images/busimil.png', '부시밀 10년', 4.1, 40, 700, 30000, 35000, 38000, "셰리, 부드러운, 달콤한"
class spiritInfo {
  String _image_path = "";
  String _name = "";
  double _star = 0;
  int _proof = 0;
  int _capacity = 0;
  List<int> _price = [];
  String _introduce = "";

  spiritInfo(String image_path, String name, double star, int proof,
      int capacity, List<int> price, String introduce, int amount) {
    _image_path = image_path;
    _name = name;
    _star = star;
    _proof = proof;
    _capacity = capacity;
    _price = price;
    _introduce = introduce;
  }

  String getImagePath() {
    return _image_path;
  }

  String getName() {
    return _name;
  }

  double getStar() {
    return _star;
  }

  int getProof() {
    return _proof;
  }

  int getCapacity() {
    return _capacity;
  }

  List<int> getPrice() {
    return _price;
  }

  String getIntroduce() {
    return _introduce;
  }
}

class MidFilterControler extends GetxController {
  final List<spiritInfo> _spiritInfoList = [
    spiritInfo('assets/images/busimil.png', '부시밀 10년', 4.1, 40, 700,
        [30000, 35000, 39000], "셰리, 부드러운, 달콤한", 0),
    spiritInfo('assets/images/busimil.png', '짹다니엘', 4.2, 45, 800,
        [200000, 370000, 420000], "씁슬함, 부드러운", 0),
    spiritInfo('assets/images/busimil.png', '참이슬', 4.82, 1113, 1000,
        [10000, 15000, 18000], "맛없는", 0),
    spiritInfo('assets/images/busimil.png', '진로', 4.22, 1313, 800,
        [10000, 15000, 18000], "역겨운", 0),
    spiritInfo('assets/alcohols/1792.jpg', '1792', 4.8, 62, 750,
        [125000, 130000, 140000], "바닐라, 진한, 달콤한"),
    spiritInfo('assets/alcohols/noahs_mill.jpg', '노아스밀', 4.6, 57, 750,
        [164900, 174900, 184900], "바닐라, 민트, 오크향"),
    spiritInfo('assets/alcohols/knob_creek.jpg', '놉크릭', 4.7, 50, 750,
        [80000, 85000, 90000], "바닐라, 오크향, 부드러움"),
    spiritInfo('assets/alcohols/russells_reserve.jpg', '러셀 리저브', 4.7, 55, 750,
        [108300, 110000, 125320], "시나몬, 크리미, 달콤한"),
    spiritInfo('assets/alcohols/makers_Mark.jpg', '메이커스 마크', 4.4, 45, 750,
        [59000, 60000, 63000], "바닐라, 부드러움, 깨끗함"),
    spiritInfo('assets/alcohols/buffalo_Trace.jpg', '버팔로 트레이스', 4.6, 45, 750,
        [59500, 69500, 79500], "호밀, 오크, 드라이함"),
    spiritInfo('assets/alcohols/bulleit.jpg', '불렛', 4.8, 45, 700,
        [67000, 70000, 72000], "오렌지, 스파이시함, 부드러움"),
  ];

  late spiritInfo target = spiritInfo('assets/images/busimil.png', '부시밀 10년',
      4.1, 40, 700, [30000, 35000, 38000], "셰리, 부드러운, 달콤한", 0);

  List<spiritInfo> getplaceInfoList() {
    return _spiritInfoList;
  }

  void setSpiritInfo(spiritInfo changeTarget) {
    target = changeTarget;
    update();
  }
}
