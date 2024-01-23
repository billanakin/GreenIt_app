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

  bool isLoaded = true; // Debug Only: set to true
  String? output;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoaded
          // ? Text(
          //     output as String,
          //     textAlign: TextAlign.center,
          //   )
          ? xxbuild(context)
          : const CircularProgressIndicator(),
    );
  }

  Widget xxbuild(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
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
        Align(
          alignment: Alignment.bottomCenter,
          child: DraggableScrollableSheet(
            initialChildSize: 0.20,
            minChildSize: 0.20,
            maxChildSize: 1,
            snap: true,
            expand: false,
            snapSizes: const [0.6, 1],
            snapAnimationDuration: kDefaultDuration,
            builder: (context, scrollController) => Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                width: SizeConfig.screenWidth,
                child: ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: const Icon(Icons.list),
                        trailing: const Text(
                          "GFG",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        title: Text("List item $index"));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Align buildMapOptionsButtons() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: kDefaultHorizontalPadding / 1.3,
          top: getProportionateScreenHeight(80),
        ),
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
