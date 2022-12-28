import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'AdressControler.dart';
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
    addMarker(LatLng(36.3620646, 127.341827), "궁동 458-13 GS25 충남대빌리지점",
        "09:00 ~ 23:00", "042)123-4567");
    addMarker(LatLng(36.3618326, 127.344154), "궁동 479-11 세븐일레븐충남대사랑점",
        "20:00 ~ 23:00", "042)379-8379");
    addMarker(LatLng(36.3621741, 127.347599), "궁동 414-16 GS25 궁동충남대점",
        "10:00 ~ 23:00", "042)1234-1234");
  }

  addMarker(cordinate, String adress, String pickup_time, String phone_number) {
    mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
    int id = Random().nextInt(100);
    setState(() {
      markers.add(Marker(
          markerId: MarkerId(id.toString()),
          onTap: () {
            final controller = Get.put(AdressController());
            controller.setAdress(adress, pickup_time, phone_number);
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
