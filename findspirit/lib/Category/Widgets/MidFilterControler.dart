import 'package:get/get.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

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
      int capacity, List<int> price, String introduce) {
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
        [30000, 35000, 39000], "셰리, 부드러운, 달콤한"),
    spiritInfo('assets/images/busimil.png', '짹다니엘', 4.2, 45, 800,
        [200000, 370000, 420000], "씁슬함, 부드러운"),
    spiritInfo('assets/images/busimil.png', '참이슬', 4.82, 1113, 1000,
        [10000, 15000, 18000], "맛없는"),
    spiritInfo('assets/images/busimil.png', '진로', 4.22, 1313, 800,
        [10000, 15000, 18000], "역겨운"),
  ];

  late spiritInfo target = spiritInfo('assets/images/busimil.png', '부시밀 10년',
      4.1, 40, 700, [30000, 35000, 38000], "셰리, 부드러운, 달콤한");

  List<spiritInfo> getplaceInfoList() {
    return _spiritInfoList;
  }

  void setSpiritInfo(spiritInfo changeTarget) {
    target = changeTarget;
    update();
  }
}
