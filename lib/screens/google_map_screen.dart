import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/google_map_controller.dart';

class google_map extends StatefulWidget {
  const google_map({Key? key}) : super(key: key);

  @override
  State<google_map> createState() => _google_mapState();
}

class _google_mapState extends State<google_map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetBuilder<google_map_controller>(
              init: google_map_controller(),
              builder: (controller) {
                return Stack(
                  children: [
                    Container(
                      //height: MediaQuery.of(context).size.height,
                      //width: MediaQuery.of(context).size.width,
                      child: GoogleMap(
                        mapToolbarEnabled: true,
                        minMaxZoomPreference: MinMaxZoomPreference(15, 50),
                        onCameraMove: controller.onCameraPosition,
                        myLocationEnabled: true,
                        scrollGesturesEnabled: true,
                        //markers: {
                        // Marker(
                        //   markerId: MarkerId('location'),
                        //  position: controller.intialcameraposition)
                        //},
                        zoomGesturesEnabled: true,
                        compassEnabled: true,
                        mapType: MapType.normal,
                        markers: controller.myMarkers,
                        onTap: (LatLng current) async {
                          print(current.latitude);
                          print(current.longitude);
                          setState(() {
                            controller.myMarkers.add(Marker(
                                markerId: MarkerId("l9"),
                                position: LatLng(
                                    current.longitude, current.latitude)));
                          });
                        },
                        zoomControlsEnabled: true,
                        myLocationButtonEnabled: true,
                        // initialCameraPosition: CameraPosition(
                        //     target: controller.intialcameraposition.target),
                        onMapCreated: (GoogleMapController cnt) {
                          // controller?.onMapCreated(cnt);
                          controller?.completerController.complete(cnt);
                        },
                        initialCameraPosition: CameraPosition(
                            target: LatLng(30.61200, 32.28882),
                            zoom: 14,
                            bearing: 60),
                      ),
                    )
                  ],
                );
              })
        ],
      ),
    );
  }
}
