import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
// import 'package:greenit_app/apis/post_api.dart';
// import 'package:greenit_app/components/app_bar/home_page_app_bar.dart';
// import 'package:greenit_app/components/buttons/add_new_post_button.dart';
// import 'package:greenit_app/models/current.dart';
// import 'package:greenit_app/models/post.dart';
// import 'package:greenit_app/screens/home/components/body.dart';

// import 'package:greenit_app/models/profile.dart';
// import 'package:greenit_app/screens/home/loading/home_screen_loading.dart';

import 'package:greenit_app/components/buttons/primary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

import 'package:geolocator/geolocator.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   Future<List<Post>> _loadData() async {
//     var apiResponse = await PostApi().latest();
//     if (apiResponse.success) {
//       return apiResponse.data!.list;
//     } else {
//       return <Post>[];
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<Post>>(
//       future: _loadData(),
//       builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
//         if (snapshot.hasData) {
//           return buildWidgets(context, snapshot.data!);

//           // This is for demo purposes only
//           // return ErrorState(
//           //   appBar: HomePageAppBar(
//           //     userProfile: Profile.fromUser(Current.user!),
//           //   ),
//           // );
//         } else {
//           return const HomeScreenLoading();
//         }

//         // Error Condition:
//         // return ErrorState(
//         //   appBar: HomePageAppBar(
//         //     userProfile: Profile.fromUser(Current.user!),
//         //   ),
//         // );
//       },
//     );
//   }

//   PopScope buildWidgets(BuildContext context, List<Post> data) {
//     return PopScope(
//       canPop: false,
//       child: Scaffold(
//         extendBodyBehindAppBar: true,
//         appBar: HomePageAppBar(
//           userProfile: Profile.fromUser(Current.user!),
//         ),
//         body: Body(posts: data),
//         floatingActionButton: const AddNewPostButton(),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get User Location'),
      ),
      body: const GeolocatorApp(),
    );
  }
}

class GeolocatorApp extends StatefulWidget {
  const GeolocatorApp({super.key});

  @override
  State<GeolocatorApp> createState() => _GeolocatorState();
}

class _GeolocatorState extends State<GeolocatorApp> {
  Position? _currentLocation;

  late bool servicePermission = false;
  late LocationPermission permission;

  String? _currentAddress;

  Future<Position> _getCurrentLocation() async {
    servicePermission = await Geolocator.isLocationServiceEnabled();
    if (!servicePermission) {
      print('service disabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    return await Geolocator.getCurrentPosition();
  }

  _getAddressFromCoordinates() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          _currentLocation!.latitude, _currentLocation!.longitude);

      Placemark place = placemarks[0];

      setState(() {
        _currentAddress =
            "${place.street}, ${place.subLocality}, ${place.locality}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Location Coordinates: \n',
              style: kPrimaryHeaderTextStyle,
              children: <TextSpan>[
                TextSpan(
                    text:
                        "Latitude = ${_currentLocation?.latitude ?? ''} : Longitude = ${_currentLocation?.longitude ?? ''}",
                    style: kPrimaryBodyTextStyle),
              ],
            ),
          ),
          const VerticalSpacing(of: 20),
          RichText(
            text: TextSpan(
              text: 'Location Address: \n',
              style: kPrimaryHeaderTextStyle,
              children: <TextSpan>[
                TextSpan(text: _currentAddress, style: kPrimaryBodyTextStyle),
              ],
            ),
          ),
          const VerticalSpacing(of: 50),
          PrimaryButton(
            press: () async {
              _currentLocation = await _getCurrentLocation();
              await _getAddressFromCoordinates();

              print("${_currentAddress}");
              print("${_currentLocation}");
            },
            width: getProportionateScreenWidth(250),
            text: 'Get Location',
          ),
        ],
      ),
    );
  }
}
