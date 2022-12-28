import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'placeInfo.dart';

class AdressController extends GetxController {
  bool _target_adress_is_exsist = false;
  String _adress = "";
  String _pickup_time = "";
  String _phone_number = "";

  void setAdress(String adress, String pickup_time, String phone_number) {
    _target_adress_is_exsist = true;
    _adress = adress;
    _pickup_time = pickup_time;
    _phone_number = phone_number;
    update();
  }

  bool targetAdressIsExsist() {
    return _target_adress_is_exsist;
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
