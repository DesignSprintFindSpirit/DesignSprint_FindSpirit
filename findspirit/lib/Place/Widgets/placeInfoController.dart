import 'package:get/get.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class placeInfo {
  late LatLng _place_latLng;
  late String _adress;
  late String _pickup_time;
  late String _phone_number;

  placeInfo(LatLng place_latLng, String adress, String pickup_time,
      String phone_number) {
    _place_latLng = place_latLng;
    _adress = adress;
    _pickup_time = pickup_time;
    _phone_number = phone_number;
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
}

class placeInfoController extends GetxController {
  final List<placeInfo> placeInfoList = [
    placeInfo(
      LatLng(36.3620646, 127.341827),
      "궁동 458-13 GS25 충남대빌리지점",
      "09:00 ~ 23:00",
      "042)123-4567",
    ),
    placeInfo(
      LatLng(36.3618326, 127.344154),
      "궁동 479-11 세븐일레븐충남대사랑점",
      "20:00 ~ 23:00",
      "042)379-8379",
    ),
    placeInfo(
      LatLng(36.3621741, 127.347599),
      "궁동 414-16 GS25 궁동충남대점",
      "10:00 ~ 23:00",
      "042)1234-1234",
    ),
    placeInfo(
      LatLng(36.3621771, 127.347999),
      "sample place",
      "10:00 ~ 23:00",
      "042)1234-1234",
    ),
    placeInfo(
      LatLng(36.3631741, 127.348599),
      "sample place2",
      "10:00 ~ 23:00",
      "042)1234-1234",
    ),
  ];

  placeInfo target = placeInfo(
    LatLng(0, 0),
    "",
    "",
    "",
  );

  bool target_exsist = false;

  void setPlace(String adress, String pickupTime, String phoneNumber) {
    target._adress = adress;
    target._pickup_time = pickupTime;
    target._phone_number = phoneNumber;
    target_exsist = true;
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
        placeInfo(target.getLatLng(), target.getAdress(),
            target.getPickupTime(), target.getPhoneNumber())
      ];
    }
    return placeInfoList;
  }
}
