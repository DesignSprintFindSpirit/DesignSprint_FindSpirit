import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'placeInfoController.dart';
import 'package:get/get.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);
  @override
  State<MapSample> createState() => _UserMapInfoState();
}

class _UserMapInfoState extends State<MapSample> {
  // 지도 클릭 시 표시할 장소에 대한 마커 목록
  final List<Marker> markers = [];

  late GoogleMapController mapController;
  late LatLng _currentPosition = const LatLng(36.3620646, 127.341827);

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  // cur location fetch
  getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    double lat = position.latitude;
    double long = position.longitude;

    LatLng location = LatLng(lat, long);
    _currentPosition = location;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    final PlaceController = Get.put(placeInfoController());
    for (int i = 0; i < PlaceController.placeInfoList.length; i++) {
      addMarker(
          PlaceController.placeInfoList[i].getLatLng(),
          PlaceController.placeInfoList[i].getAdress(),
          PlaceController.placeInfoList[i].getPickupTime(),
          PlaceController.placeInfoList[i].getPhoneNumber());
    }
  }

  addMarker(cordinate, String adress, String pickup_time, String phone_number) {
    mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
    int id = Random().nextInt(100);
    setState(() {
      markers.add(Marker(
          markerId: MarkerId(id.toString()),
          onTap: () {
            final controller = Get.put(placeInfoController());
            controller.setPlace(adress, pickup_time, phone_number);
          },
          position: cordinate));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _currentPosition,
            zoom: 14.0,
          ),
          markers: Set.from(markers),
        ),
        // align it to the bottom center, you can try different options too (e.g topLeft,centerLeft)
        Align(
          alignment: Alignment.topRight,
          // add your floating action button
          child: FloatingActionButton(
            onPressed: () {
              mapController
                  .animateCamera(CameraUpdate.newLatLng(_currentPosition));
            },
            child: Icon(Icons.my_location),
          ),
        ),
      ],
    );
  }
}
