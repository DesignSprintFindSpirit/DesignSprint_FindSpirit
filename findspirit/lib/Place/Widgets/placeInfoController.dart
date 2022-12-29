import 'package:get/get.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class placeInfo {
  late LatLng _place_latLng;
  late String _adress;
  late String _pickup_time;
  late String _phone_number;
  late String _real_adress;

  placeInfo(LatLng place_latLng, String adress, String pickup_time,
      String phone_number, String real_adress) {
    _place_latLng = place_latLng;
    _adress = adress;
    _pickup_time = pickup_time;
    _phone_number = phone_number;
    _real_adress = real_adress;
  }
  LatLng getLatLng() {
    return _place_latLng;
  }

  String getAdress() {
    return _adress;
  }

  String getPickupTime() {
    return _pickup_time;
  }

  String getPhoneNumber() {
    return _phone_number;
  }

  String getRealAdress() {
    return _real_adress;
  }

  String getHomePagePlace() {
    return _adress + " " + _real_adress;
  }
}

class placeInfoController extends GetxController {
  final List<placeInfo> placeInfoList = [
    placeInfo(
      LatLng(36.3620646, 127.341827),
      "GS25 충남대빌리지점",
      "09:00 ~ 23:00",
      "042)123-4567",
      "궁동 458-13",
    ),
    placeInfo(
      LatLng(36.3618326, 127.344154),
      "세븐일레븐충남대사랑점",
      "20:00 ~ 23:00",
      "042)379-8379",
      "궁동 479-11",
    ),
    placeInfo(
      LatLng(36.3621741, 127.347599),
      "GS25 궁동충남대점",
      "10:00 ~ 23:00",
      "042)1234-1234",
      "궁동 414-16",
    ),
    placeInfo(
      LatLng(36.3621771, 127.347999),
      "sample place",
      "10:00 ~ 23:00",
      "042)1234-1234",
      "주소 1",
    ),
    placeInfo(
      LatLng(36.3631741, 127.348599),
      "sample place2",
      "10:00 ~ 23:00",
      "042)1234-1234",
      "주소 2",
    ),
  ];

  placeInfo target = placeInfo(
    LatLng(0, 0),
    "",
    "",
    "",
    "",
  );

  bool target_exsist = false;

  void setPlace(
      String adress, String pickupTime, String phoneNumber, String realAdress) {
    target._adress = adress;
    target._pickup_time = pickupTime;
    target._phone_number = phoneNumber;
    target._real_adress = realAdress;
    target_exsist = true;
    update();
  }

  void resetPlace() {
    target._adress = "";
    target._pickup_time = "";
    target._phone_number = "";
    target._real_adress = "";
    target_exsist = false;
    update();
  }

  int getPlaceIndex() {
    if (target_exsist)
      return 1;
    else
      return placeInfoList.length;
  }

  List<placeInfo> getplaceInfoList() {
    if (target_exsist) {
      return [
        placeInfo(
            target.getLatLng(),
            target.getAdress(),
            target.getPickupTime(),
            target.getPhoneNumber(),
            target.getRealAdress())
      ];
    }
    return placeInfoList;
  }
}
