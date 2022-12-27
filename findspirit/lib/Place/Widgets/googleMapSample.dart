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
  late LatLng _currentPosition;

  @override
  void initState() {
    super.initState();
    getLocation();
    _onMapCreated;
    setState(() {
      // 궁동 458-13 GS25 충남대빌리지점
      markers.add(Marker(
          markerId: MarkerId("1".toString()),
          draggable: true,
          onTap: () => print("Marker!"),
          position: LatLng(127.341827, 36.3620646)));
      // 궁동 479-11 세븐일레븐충남대사랑점
      markers.add(Marker(
          markerId: MarkerId("2".toString()),
          draggable: true,
          onTap: () => print("Marker!"),
          position: LatLng(127.344154, 36.3618326)));
      // 궁동 414-16 GS25 궁동충남대점
      markers.add(Marker(
          markerId: MarkerId("3".toString()),
          draggable: true,
          onTap: () => print("Marker!"),
          position: LatLng(127.347599, 36.3621741)));
    });
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

    setState(() {
      _currentPosition = location;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  addMarker(cordinate) {
    mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
    int id = Random().nextInt(100);
    setState(() {
      markers
          .add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 14.0,
        ),
        markers: Set.from(markers),
        onTap: (cordinate) {
          mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);

          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text('Modal BottomSheet'),
                      ElevatedButton(
                        child: const Text('Done!'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
