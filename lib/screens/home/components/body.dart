import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:greenit_app/apis/post_api.dart';
import 'package:greenit_app/components/buttons/map_display_button.dart';
import 'package:greenit_app/components/buttons/user_location_focus_button.dart';
import 'package:greenit_app/components/buttons/view_post_button.dart';
// import 'package:greenit_app/components/posts/post_card/post_card.dart';
import 'package:greenit_app/components/posts/section_header.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/screens/home/home_screen.dart';
import 'package:greenit_app/screens/home/loading/home_screen_loading.dart';
import 'package:greenit_app/screens/view_post/view_post_screen.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
    required this.posts,
  });

  final List<Post> posts;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late GoogleMapController _mapController;

  final LatLng _center = const LatLng(10.308878513658154, 123.89138682763317);

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _changeMapMode();
  }

  _changeMapMode() {
    _getJsonFile("assets/google_maps_style.json").then(_setMapStyle);
  }

  Future<String> _getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void _setMapStyle(String mapStyle) {
    _mapController.setMapStyle(mapStyle);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: (widget.posts.isNotEmpty)
                  ? LatLng(
                      widget.posts.first.latitude, widget.posts.first.longitude)
                  : _center,
              zoom: 14.0,
            ),
            markers: widget.posts
                .map(
                  (post) => Marker(
                    markerId: MarkerId(post.id.toString()),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ViewPostScreen(),
                          settings: RouteSettings(arguments: post),
                        ),
                      );
                    },
                    position: LatLng(
                      post.latitude,
                      post.longitude,
                    ),
                  ),
                )
                .toSet(),
            scrollGesturesEnabled: true,
            zoomGesturesEnabled: true,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
          ),
          // ==============================================================
          buildMapOptionsButtons(),
          buildBottomSheet(),
        ],
      ),
    );
  }

  Align buildBottomSheet() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: DraggableScrollableSheet(
        initialChildSize: 0.13,
        minChildSize: 0.13,
        maxChildSize: 1,
        snap: true,
        expand: false,
        snapSizes: const [0.6, 1],
        snapAnimationDuration: kDefaultDuration,
        builder: (context, scrollController) => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x21000000),
                  blurRadius: 6,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            width: SizeConfig.screenWidth,
            child: ListView(
              padding: EdgeInsets.zero,
              controller: scrollController,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: IgnorePointer(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(10),
                        bottom: getProportionateScreenHeight(10),
                      ),
                      height: getProportionateScreenHeight(5),
                      width: getProportionateScreenWidth(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kPrimaryBorderColor,
                      ),
                    ),
                  ),
                ),
                const VerticalSpacing(of: 10),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultHorizontalPadding,
                  ),
                  child: const SectionHeader(
                    title: 'Latest Now',
                    subtitle: 'Checkout recent happenings worldwide!',
                  ),
                ),
                const Column(
                  children: [
                    //TODO
                    // ...List.generate(
                    //   demoLatestNowPost.length,
                    //   (index) => PostCard(
                    //     post: demoLatestNowPost[index],
                    //     isBottomSheet: true,
                    //   ),
                    // )
                  ],
                ),
                const VerticalSpacing(of: 20),
                PrimaryTextButton(
                  press: () {},
                  text: 'View more latest',
                ),
                const VerticalSpacing(of: 20),
                const Divider(),
                const VerticalSpacing(of: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultHorizontalPadding,
                  ),
                  child: const SectionHeader(
                    title: 'Near Me',
                    subtitle: "Explore what's close!",
                  ),
                ),
                const Column(
                  children: [
                    // TODO
                    // ...List.generate(
                    //   demoNearMePost.length,
                    //   (index) => PostCard(
                    //     post: demoNearMePost[index],
                    //     isBottomSheet: true,
                    //   ),
                    // )
                  ],
                ),
                const VerticalSpacing(of: 20),
                PrimaryTextButton(
                  press: () {},
                  text: 'View more near me',
                ),
                const VerticalSpacing(of: 20),
                const Divider(),
                const VerticalSpacing(of: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultHorizontalPadding,
                  ),
                  child: const SectionHeader(
                    title: 'Browse',
                    subtitle: "Discover diverse events!",
                  ),
                ),
                const Column(
                  children: [
                    // TODO
                    // ...List.generate(
                    //   demoBrowsePost.length,
                    //   (index) => PostCard(
                    //     post: demoBrowsePost[index],
                    //     isBottomSheet: true,
                    //   ),
                    // )
                  ],
                ),
                const VerticalSpacing(of: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Align buildMapOptionsButtons() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: kDefaultHorizontalPadding / 1.3,
          top: getProportionateScreenHeight(10),
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
