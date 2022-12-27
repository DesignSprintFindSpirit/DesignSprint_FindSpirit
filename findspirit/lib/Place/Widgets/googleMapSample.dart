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
    int id = Random().nextInt(100);
    setState(() {
      markers
          .add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
      print(markers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 16.0,
        ),
        markers: markers.toSet(),
        onTap: (cordinate) {
          mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
        },
      ),
    );
  }
}
