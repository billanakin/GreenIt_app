import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/home/components/map_display_button.dart';
import 'package:greenit_app/screens/home/components/user_location_focus_button.dart';
import 'package:greenit_app/size_config.dart';

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

  bool isLoaded = false;
  String? output;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoaded
          ? Text(
              output as String,
              textAlign: TextAlign.center,
            )
          : const CircularProgressIndicator(),
    );
  }

  Widget xxbuild(BuildContext context) {
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
        buildMapOptionsButtons(),
      ],
    );
  }

  Positioned buildMapOptionsButtons() {
    return Positioned(
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
    );
  }
}
