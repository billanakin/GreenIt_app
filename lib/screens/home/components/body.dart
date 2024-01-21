import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/home/components/map_display_button.dart';
import 'package:greenit_version1/screens/home/components/user_location_focus_button.dart';
import 'package:greenit_version1/size_config.dart';

import '../../../components/sheets/map_display/map_display_modal_bottom_sheet.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(9.901566, 123.586010);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        // =============== PLACE GOOGLE MAP INTERFACE HERE===============
        // Placeholder(
        //   color: Colors.black,
        //   child: Container(
        //     color: Colors.green.shade200,
        //     // color: Colors.white,
        //   ),
        // ),
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 14.0,
          ),
        ),
        // ==============================================================
        Positioned(
          top: getProportionateScreenHeight(80),
          child: Padding(
            padding: EdgeInsets.only(right: kDefaultHorizontalPadding / 1.3),
            child: const SizedBox(
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MapDisplayButton(),
                  UserLocationFocusButton(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
