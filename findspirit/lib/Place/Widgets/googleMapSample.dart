import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);
  @override
  State<MapSample> createState() => _UserMapInfoState();
}

class _UserMapInfoState extends State<MapSample> {
  // 지도 클릭 시 표시할 장소에 대한 마커 목록
  final List<Marker> markers = [];

  late GoogleMapController mapController;
  late LatLng _currentPosition =
      const LatLng(36.34341670217808, 127.41633363068104);

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
    addMarker(LatLng(36.3620646, 127.341827), "궁동 458-13 GS25 충남대빌리지점");
    addMarker(LatLng(36.3618326, 127.344154), "궁동 479-11 세븐일레븐충남대사랑점");
    addMarker(LatLng(36.3621741, 127.347599), "궁동 414-16 GS25 궁동충남대점");
  }

  addMarker(cordinate, String Address) {
    mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
    int id = Random().nextInt(100);
    setState(() {
      markers.add(Marker(
          markerId: MarkerId(id.toString()),
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 200,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(Address),
                        ElevatedButton(
                          child: const Text('선택'),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          position: cordinate));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: _currentPosition,
        zoom: 14.0,
      ),
      markers: Set.from(markers),
    );
  }
}
