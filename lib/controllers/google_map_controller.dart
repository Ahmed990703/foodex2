import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class google_map_controller extends GetxController {
  Position? currentLocation;
  late bool servicePermission = false;
  late LocationPermission? permission;
  String currentAddress = '';
  final CameraPosition intialcameraposition = CameraPosition(
      target: LatLng(30.6119364, 32.2888304), zoom: 14, bearing: 40);
  Set<Marker> myMarkers = {
    Marker(markerId: MarkerId("l1"), position: LatLng(30.6119364, 32.2888304))
  };
  GoogleMapController? controller;
  Location location = Location();
  Completer<GoogleMapController> completerController = Completer();
  late LatLng currentMapPosition;

  Future<Position> _getcurrentlocation() async {
    servicePermission = await Geolocator.isLocationServiceEnabled();
    if (!servicePermission) {
      print('service disapled');
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return await Geolocator.getCurrentPosition();
  }

  onCameraPosition(CameraPosition postion) =>
      currentMapPosition = postion.target;

  onMapCreated(GoogleMapController cnt) {
    controller = cnt;
    location.onLocationChanged.listen(
      (l) {
        controller!.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
                target: LatLng(l.latitude!, l.longitude!),
                zoom: 4,
                bearing: 60,
                tilt: 45),
          ),
        );
      },
    );
    update();
  }
}
