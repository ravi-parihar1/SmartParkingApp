import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_car_parking/config/colors.dart';
import 'package:smart_car_parking/pages/homepage/homepage.dart';


class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Completer<GoogleMapController> controller = Completer();
    const LatLng center = LatLng(24.585693369203383, 73.71191966264558);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/aplo.jpg",
                width: 40,
                height: 40,
              ),
          SizedBox(width: 20,),
              const Text(
                "QuickPark",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  // parkingController.timeCounter();
                  Get.toNamed("/about-us");
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                )),
          ],
          centerTitle: true,
        ),
        body: GoogleMap(
          buildingsEnabled: true,
          compassEnabled: true,
          mapType: MapType.terrain,
          initialCameraPosition: const CameraPosition(
            target: center,
            zoom: 14.0,
          ),
          markers: {
            Marker(
              visible: true,
              onTap: () {
                Get.to(HomePage());
              },
              markerId: MarkerId('parking_1'),
              position: LatLng(24.58767375389574, 73.716932596604),
            ),
            Marker(
              visible: true,
              onTap: () {
                Get.to(HomePage());
              },
              markerId: MarkerId('parking_2'),
              position: LatLng(24.58072728527373, 73.70989448014896),
            ),
            Marker(
              visible: true,
              onTap: () {
                Get.to(HomePage());
              },
              markerId: MarkerId('parking_3'),
              position: LatLng(24.58072728527373, 73.70989448014896),
            ),
            Marker(
              visible: true,
              onTap: () {
                Get.to(HomePage());
              },
              markerId: MarkerId('parking_4'),
              position: LatLng(24.590616653505545, 73.72358634294011),
            ),
            Marker(
              visible: true,
              onTap: () {
                Get.to(HomePage());
              },
              markerId: MarkerId('parking_5'),
              position: LatLng(24.581008764033317, 73.69815402474661),
            ),
          },
          myLocationButtonEnabled: true,
          onMapCreated: (GoogleMapController controller) {},
        ),
      ),
    );
  }
}
